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

class Praise extends HookConsumerWidget {
  final Fragment$PraiseSummary praise;
  final bool optimistic;
  const Praise({super.key, required this.praise, required this.optimistic});

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
            ...praise.toJson(),
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
      final likedUsers = praise.likedUsers;
      if (liked) {
        likedUsers!
            .removeWhere((user) => user.id == ref.watch(userProvider).id);
      } else {
        likedUsers!.add(Fragment$PraiseSummary$likedUsers(
            $__typename: "Post", id: ref.watch(userProvider).id));
      }

      return <String, dynamic>{
        'action': {
          'post': {
            '__typename': 'Post',
            'id': praise.id,
            'likedUsers': likedUsers,
          }
        }
      };
    }

    Map<String, dynamic> expectedBookmarkResult(bool bookmarked) {
      final bookmarkedUsers = praise.bookmarkedUsers;
      if (bookmarked) {
        bookmarkedUsers!
            .removeWhere((user) => user.id == ref.watch(userProvider).id);
      } else {
        bookmarkedUsers!.add(Fragment$PraiseSummary$bookmarkedUsers(
            $__typename: "Post", id: ref.watch(userProvider).id));
      }

      return <String, dynamic>{
        'action': {
          'post': {
            '__typename': 'Post',
            'id': praise.id,
            'bookmarkedUsers': bookmarkedUsers,
          }
        }
      };
    }

    final liked = praise.likedUsers!
        .map((user) => user.id)
        .contains(ref.watch(userProvider).id);
    final bookmarked = praise.bookmarkedUsers!
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
                  userID: ref.watch(userProvider).id, postID: praise.id)),
          optimisticResult: expectedLikeResult(false));
    }

    unlike() {
      unlikePostMutation.runMutation(
          Variables$Mutation$UnlikePost(
              unlikePostInput: Input$UnlikePostInput(
                  userID: ref.watch(userProvider).id, postID: praise.id)),
          optimisticResult: expectedLikeResult(true));
    }

    bookmark() {
      bookmarkPostMutation.runMutation(
          Variables$Mutation$BookmarkPost(
              bookmarkPostInput: Input$BookmarkPostInput(
                  userID: ref.watch(userProvider).id, postID: praise.id)),
          optimisticResult: expectedBookmarkResult(false));
    }

    unbookmark() {
      unbookmarkPostMutation.runMutation(
          Variables$Mutation$UnbookmarkPost(
              unbookmarkPostInput: Input$UnbookmarkPostInput(
                  userID: ref.watch(userProvider).id, postID: praise.id)),
          optimisticResult: expectedBookmarkResult(true));
    }

    final anyLikeLoading = likePostMutation.result.isLoading ||
        unlikePostMutation.result.isLoading ||
        optimistic;

    final anyBookmarkLoading = bookmarkPostMutation.result.isLoading ||
        unbookmarkPostMutation.result.isLoading ||
        optimistic;

    final category = masterCategories.firstWhere(
        (masterCategory) => masterCategory.id.toString() == praise.category.id);

    return Container(
        margin: const EdgeInsets.only(top: 20, right: 5, left: 5),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
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
                  radius: 14,
                  child: SvgPicture.asset(
                    'assets/category_${category.asset}.svg',
                    width: 18,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(category.name),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Content(praise: praise),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: praise.hashtags!
                .map((hashtag) => HashTag(name: hashtag.title))
                .toList(),
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/profile',
                        arguments: ProfilePageArguments(praise.owner.id));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      praise.owner.avatarURL != ""
                          ? CircleAvatar(
                              maxRadius: 12,
                              backgroundImage:
                                  NetworkImage(praise.owner.avatarURL!))
                          : const CircleAvatar(
                              maxRadius: 12,
                              backgroundImage:
                                  AssetImage("assets/noimage.png")),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        praise.owner.name,
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
                  praise.likedUsers!.length.toString(),
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
                  praise.bookmarkedUsers!.length.toString(),
                  style: const TextStyle(color: Colors.black87, fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          )
        ]));
  }
}

class Content extends StatefulWidget {
  final Fragment$PraiseSummary praise;
  const Content({Key? key, required this.praise}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  bool isShowed = false;

  @override
  void initState() {
    super.initState();
    isShowed = !widget.praise.spoiled;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/work',
                  arguments: WorkPageArguments(widget.praise.work.id));
            },
            child: Text(
              widget.praise.work.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: blueButtonColor,
                decoration: TextDecoration.underline,
                decorationThickness: 4,
              ),
              overflow: TextOverflow.ellipsis,
            )),
        const SizedBox(
          height: 10,
        ),
        isShowed
            ? Text(
                widget.praise.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )
            : const Text(
                "ネタバレを含む投稿です",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
        const SizedBox(
          height: 10,
        ),
        isShowed
            ? Text(
                widget.praise.content,
                style: const TextStyle(color: Colors.black87, fontSize: 14),
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
