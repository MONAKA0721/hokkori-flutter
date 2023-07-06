import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/schema.graphql.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/home/hashtag.dart';
import 'package:hokkori/pages/profile/profile_page.dart';
import 'package:hokkori/pages/search/work_page.dart';
import 'package:hokkori/utils/categories.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Letter extends HookConsumerWidget {
  final Fragment$LetterSummary letter;
  final bool optimistic;
  const Letter({super.key, required this.letter, required this.optimistic});

  Map<String, dynamic>? extractPostData(Map<String, Object?> data) {
    final action = data['action'] as Map<String, dynamic>?;
    if (action == null) {
      return null;
    }
    return action['post'] as Map<String, dynamic>?;
  }

  FutureOr<void> Function(GraphQLDataProxy, QueryResult?)? get update =>
      (cache, result) {
        if (result!.hasException) {
          return;
        } else {
          final updated = {
            ...letter.toJson(),
            ...extractPostData(result.data!)!,
          };
          cache.writeFragment(
            Fragment(
              document: gql(
                '''
                  fragment fields on Post {
                    id
                    likedUsers
                    bookmarkedUsers
                  }
                ''',
              ),
            ).asRequest(idFields: {
              '__typename': updated['__typename'],
              'id': updated['id'],
            }),
            data: updated,
          );
        }
      };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, dynamic> expectedLikeResult(bool liked) {
      final likedUsers = letter.likedUsers;
      if (liked) {
        likedUsers!
            .removeWhere((user) => user.id == ref.watch(userProvider).id);
      } else {
        likedUsers!.add(Fragment$LetterSummary$likedUsers(
            $__typename: "Post", id: ref.watch(userProvider).id));
      }

      return <String, dynamic>{
        'action': {
          'post': {
            '__typename': 'Post',
            'id': letter.id,
            'likedUsers': likedUsers,
          }
        }
      };
    }

    Map<String, dynamic> expectedBookmarkResult(bool bookmarked) {
      final bookmarkedUsers = letter.bookmarkedUsers;
      if (bookmarked) {
        bookmarkedUsers!
            .removeWhere((user) => user.id == ref.watch(userProvider).id);
      } else {
        bookmarkedUsers!.add(Fragment$LetterSummary$bookmarkedUsers(
            $__typename: "Post", id: ref.watch(userProvider).id));
      }

      return <String, dynamic>{
        'action': {
          'post': {
            '__typename': 'Post',
            'id': letter.id,
            'bookmarkedUsers': bookmarkedUsers,
          }
        }
      };
    }

    final liked = letter.likedUsers!
        .map((user) => user.id)
        .contains(ref.watch(userProvider).id);
    final bookmarked = letter.bookmarkedUsers!
        .map((user) => user.id)
        .contains(ref.watch(userProvider).id);

    final likePostMutation =
        useMutation$LikePost(WidgetOptions$Mutation$LikePost(update: update));
    final unlikePostMutation = useMutation$UnlikePost(
        WidgetOptions$Mutation$UnlikePost(update: update));
    final bookmarkPostMutation = useMutation$BookmarkPost(
        WidgetOptions$Mutation$BookmarkPost(update: update));
    final unbookmarkPostMutation = useMutation$UnbookmarkPost(
        WidgetOptions$Mutation$UnbookmarkPost(update: update));

    like() {
      likePostMutation.runMutation(
          Variables$Mutation$LikePost(
              likePostInput: Input$LikePostInput(
                  userID: ref.watch(userProvider).id, postID: letter.id)),
          optimisticResult: expectedLikeResult(false));
    }

    unlike() {
      unlikePostMutation.runMutation(
          Variables$Mutation$UnlikePost(
              unlikePostInput: Input$UnlikePostInput(
                  userID: ref.watch(userProvider).id, postID: letter.id)),
          optimisticResult: expectedLikeResult(true));
    }

    bookmark() {
      bookmarkPostMutation.runMutation(
          Variables$Mutation$BookmarkPost(
              bookmarkPostInput: Input$BookmarkPostInput(
                  userID: ref.watch(userProvider).id, postID: letter.id)),
          optimisticResult: expectedBookmarkResult(false));
    }

    unbookmark() {
      unbookmarkPostMutation.runMutation(
          Variables$Mutation$UnbookmarkPost(
              unbookmarkPostInput: Input$UnbookmarkPostInput(
                  userID: ref.watch(userProvider).id, postID: letter.id)),
          optimisticResult: expectedBookmarkResult(true));
    }

    final anyLikeLoading = likePostMutation.result.isLoading ||
        unlikePostMutation.result.isLoading ||
        optimistic;

    final anyBookmarkLoading = bookmarkPostMutation.result.isLoading ||
        unbookmarkPostMutation.result.isLoading ||
        optimistic;

    final category = masterCategories.firstWhere(
        (masterCategory) => masterCategory.id.toString() == letter.category.id);

    return Container(
        margin: const EdgeInsets.only(top: 20, right: 5, left: 5),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.1,
                blurRadius: 5,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.only(left: 14, right: 14, top: 15, bottom: 6),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: category.color,
                  radius: 10,
                  child: SvgPicture.asset(
                    'assets/category_${category.asset}.svg',
                    width: 14,
                  )),
              const SizedBox(
                width: 5,
              ),
              Text(category.name),
              const Spacer(),
              Text(
                letter.createTime.substring(0, 10).replaceAll('-', '.'),
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Content(letter: letter),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: letter.hashtags!
                .map((hashtag) => HashTag(name: hashtag.title))
                .toList(),
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/profile',
                        arguments: ProfilePageArguments(letter.owner.id));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      letter.owner.avatarURL != ""
                          ? CircleAvatar(
                              maxRadius: 12,
                              backgroundImage:
                                  NetworkImage(letter.owner.avatarURL!))
                          : const CircleAvatar(
                              maxRadius: 12,
                              backgroundImage:
                                  AssetImage("assets/noimage.png")),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        letter.owner.name,
                        style: const TextStyle(
                            color: Colors.black87,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2),
                      )
                    ],
                  )),
              const Spacer(),
              SizedBox(
                width: 36,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: anyLikeLoading
                        ? null
                        : liked
                            ? unlike
                            : like,
                    icon: liked
                        ? const Icon(
                            Icons.favorite,
                            color: redErrorColor,
                            size: 20,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 20,
                          )),
              ),
              SizedBox(
                width: 10,
                child: Text(
                  letter.likedUsers!.length.toString(),
                  style: const TextStyle(color: Colors.black87, fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 36,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: anyBookmarkLoading
                        ? null
                        : bookmarked
                            ? unbookmark
                            : bookmark,
                    icon: bookmarked
                        ? const Icon(
                            Icons.bookmark,
                            color: greenAccentColor,
                            size: 20,
                          )
                        : const Icon(
                            Icons.bookmark_border,
                            color: Colors.grey,
                            size: 20,
                          )),
              ),
              SizedBox(
                width: 10,
                child: Text(
                  letter.bookmarkedUsers!.length.toString(),
                  style: const TextStyle(color: Colors.black87, fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
        ]));
  }
}

class Content extends StatefulWidget {
  final Fragment$LetterSummary letter;
  const Content({Key? key, required this.letter}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  bool isShowed = false;

  @override
  void initState() {
    super.initState();
    isShowed = !widget.letter.spoiled;
  }

  @override
  Widget build(BuildContext context) {
    final thumbnail = widget.letter.thumbnail != ""
        ? widget.letter.thumbnail!
        : widget.letter.work.thumbnail != ""
            ? widget.letter.work.thumbnail!
            : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/work',
                  arguments: WorkPageArguments(widget.letter.work.id));
            },
            child: Text(
              widget.letter.work.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: blueButtonColor,
                  decoration: TextDecoration.underline,
                  decorationThickness: 4),
              overflow: TextOverflow.ellipsis,
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: isShowed
                    ? Text(
                        widget.letter.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      )
                    : const Text(
                        "ネタバレを含む投稿です",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      )),
            thumbnail != null
                ? Image.network(
                    thumbnail,
                    width: 110,
                    height: 110,
                  )
                : Image.asset(
                    "assets/noimage.png",
                    width: 80,
                    height: 80,
                  ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        isShowed
            ? Text(
                widget.letter.content,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              )
            : TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),
                child: const Text(
                  "表示する",
                  style: TextStyle(
                      color: blueButtonColor,
                      decoration: TextDecoration.underline,
                      decorationThickness: 4),
                ),
                onPressed: () {
                  setState(() {
                    isShowed = true;
                  });
                },
              ),
      ],
    );
  }
}
