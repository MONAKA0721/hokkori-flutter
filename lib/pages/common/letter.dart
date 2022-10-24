import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/schema.graphql.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
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
    Map<String, dynamic> expectedResult(bool liked) {
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

    final liked = letter.likedUsers!
        .map((user) => user.id)
        .contains(ref.watch(userProvider).id);

    final likePostMutation =
        useMutation$LikePost(WidgetOptions$Mutation$LikePost(update: update));
    final unlikePostMutation = useMutation$UnlikePost(
        WidgetOptions$Mutation$UnlikePost(update: update));

    like() {
      likePostMutation.runMutation(
          Variables$Mutation$LikePost(
              likePostInput: Input$LikePostInput(
                  userID: ref.watch(userProvider).id, postID: letter.id)),
          optimisticResult: expectedResult(false));
    }

    unlike() {
      unlikePostMutation.runMutation(
          Variables$Mutation$UnlikePost(
              unlikePostInput: Input$UnlikePostInput(
                  userID: ref.watch(userProvider).id, postID: letter.id)),
          optimisticResult: expectedResult(true));
    }

    final anyLoading = likePostMutation.result.isLoading ||
        unlikePostMutation.result.isLoading ||
        optimistic;

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
                  backgroundColor: primaryColor,
                  radius: 10,
                  child: SvgPicture.asset(
                    'assets/palette.svg',
                    width: 14,
                  )),
              const SizedBox(
                width: 5,
              ),
              Text(letter.category.name),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                letter.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              )),
              Image.network(
                "https://www.ojamakan.com/wp/wp-content/uploads/2022/04/4129Q0P1GML._AC_.jpg",
                width: 80,
                height: 80,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            letter.content,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              letter.owner.avatarURL != ""
                  ? CircleAvatar(
                      maxRadius: 12,
                      backgroundImage: NetworkImage(letter.owner.avatarURL!))
                  : const CircleAvatar(
                      maxRadius: 12,
                      backgroundImage: AssetImage("assets/noimage.png")),
              const SizedBox(
                width: 5,
              ),
              Text(
                letter.owner.name,
                style: const TextStyle(
                    color: Colors.black87,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2),
              ),
              const Spacer(),
              SizedBox(
                width: 36,
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: anyLoading
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
              const Icon(
                Icons.bookmark,
                color: greenAccentColor,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "27",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          ),
        ]));
  }
}
