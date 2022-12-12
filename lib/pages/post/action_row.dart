import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/post/post_page.dart';
import 'package:hokkori/pages/post/post_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

class ActionRow extends StatelessWidget {
  final Function? navigate;

  const ActionRow({
    Key? key,
    required this.navigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          child: Row(children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: blueButtonColor, width: 1)),
                child: const Icon(
                  Icons.chevron_left,
                  color: blueButtonColor,
                  size: 20,
                )),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "休憩する",
              style: TextStyle(
                  color: blueButtonColor,
                  fontSize: 16,
                  height: 1.25,
                  fontWeight: FontWeight.bold),
            ),
          ]),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            backgroundColor: Colors.white,
            side: const BorderSide(color: blueButtonColor, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () {
            navigate!();
          },
        ),
        SubmitButton(navigate: navigate),
      ],
    );
  }
}

class SubmitButton extends HookConsumerWidget {
  final Function? navigate;
  const SubmitButton({Key? key, required this.navigate}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool validate() {
      ref.watch(workErrorProvider.notifier).state =
          ref.watch(workProvider) == null;
      ref.watch(categoryErrorProvider.notifier).state =
          ref.watch(categoryProvider) == null;
      ref.watch(praiseTitleErrorProvider.notifier).state =
          ref.watch(praiseTitleProvider) == "";
      ref.watch(praiseContentErrorProvider.notifier).state =
          ref.watch(praiseContentProvider) == "";

      ref.watch(letterTitleErrorProvider.notifier).state =
          ref.watch(letterTitleProvider) == "" &&
              ref.watch(letterContentProvider) != "";
      ref.watch(letterContentErrorProvider.notifier).state =
          ref.watch(letterTitleProvider) != "" &&
              ref.watch(letterContentProvider) == "";

      return !ref.watch(workErrorProvider) &&
          !ref.watch(categoryErrorProvider) &&
          !ref.watch(praiseTitleErrorProvider) &&
          !ref.watch(praiseContentErrorProvider) &&
          !ref.watch(letterTitleErrorProvider) &&
          !ref.watch(letterContentErrorProvider);
    }

    void resetForm() {
      ref.watch(workProvider.notifier).state = null;
      ref.watch(categoryProvider.notifier).state = null;
      ref.watch(hashtagsProvider.notifier).state = List.empty();
      ref.watch(praiseTitleProvider.notifier).state = "";
      ref.watch(praiseContentProvider.notifier).state = "";
      ref.watch(praiseSpoiledProvider.notifier).state = false;
      ref.watch(letterTitleProvider.notifier).state = "";
      ref.watch(letterContentProvider.notifier).state = "";
      ref.watch(letterSpoiledProvider.notifier).state = false;
    }

    final createPostMutation =
        useMutation$CreatePost(WidgetOptions$Mutation$CreatePost());
    final createPostsMutation =
        useMutation$CreatePosts(WidgetOptions$Mutation$CreatePosts());
    final postMutationResult = createPostMutation.result;
    final postsMutationResult = createPostsMutation.result;
    return postMutationResult.isLoading || postsMutationResult.isLoading
        ? const CircularProgressIndicator()
        : OutlinedButton(
            child: Row(children: [
              const Text("つたえる",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.25,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                  child: const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 20,
                  )),
            ]),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              backgroundColor: blueButtonColor,
              side: const BorderSide(color: blueButtonColor, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () async {
              if (!validate()) return;
              if (ref.watch(letterTitleProvider) == "" &&
                  ref.watch(letterContentProvider) == "") {
                final result = createPostMutation.runMutation(
                    Variables$Mutation$CreatePost(
                        createPostInput: Input$CreatePostInput(
                            title: ref.watch(praiseTitleProvider),
                            content: ref.watch(praiseContentProvider),
                            type: Enum$PostPostType.praise,
                            ownerID: ref.watch(userProvider).id,
                            workID: ref.watch(workProvider)!.id,
                            spoiled: ref.watch(praiseSpoiledProvider),
                            categoryID: ref.watch(categoryProvider).toString(),
                            hashtagIDs: ref
                                .watch(hashtagsProvider)
                                .where((h) => h.id != "")
                                .map((m) => m.id)
                                .toList()),
                        hashtagTitles: ref
                            .watch(hashtagsProvider)
                            .where((h) => h.id == "")
                            .map((h) => h.title)
                            .toList()));
                if ((await result.networkResult)!.hasException) {
                  return;
                }
              } else {
                final result = createPostsMutation.runMutation(
                  Variables$Mutation$CreatePosts(
                      createPostInput: Input$CreatePostInput(
                          title: ref.watch(praiseTitleProvider),
                          content: ref.watch(praiseContentProvider),
                          type: Enum$PostPostType.praise,
                          ownerID: ref.watch(userProvider).id,
                          workID: ref.watch(workProvider)!.id,
                          spoiled: ref.watch(praiseSpoiledProvider),
                          categoryID: ref.watch(categoryProvider).toString(),
                          hashtagIDs: ref
                              .watch(hashtagsProvider)
                              .where((h) => h.id != "")
                              .map((m) => m.id)
                              .toList()),
                      createPostInput2: Input$CreatePostInput(
                          title: ref.watch(letterTitleProvider),
                          content: ref.watch(letterContentProvider),
                          type: Enum$PostPostType.letter,
                          ownerID: ref.watch(userProvider).id,
                          workID: ref.watch(workProvider)!.id,
                          spoiled: ref.watch(letterSpoiledProvider),
                          categoryID: ref.watch(categoryProvider).toString(),
                          hashtagIDs: ref
                              .watch(hashtagsProvider)
                              .where((h) => h.id != "")
                              .map((m) => m.id)
                              .toList()),
                      hashtagTitles: ref
                          .watch(hashtagsProvider)
                          .where((h) => h.id == "")
                          .map((h) => h.title)
                          .toList(),
                      image: ref.watch(thumbnailProvider) == null
                          ? null
                          : MultipartFile.fromBytes(
                              '',
                              ref.watch(thumbnailProvider)!.readAsBytesSync(),
                            )),
                );
                if ((await result.networkResult)!.hasException) {
                  return;
                }
              }
              resetForm();
              navigate!();
            },
          );
  }
}
