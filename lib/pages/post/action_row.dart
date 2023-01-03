import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/graphql/schema.graphql.dart';
import 'package:hokkori/pages/post/post_page.dart';
import 'package:hokkori/pages/post/post_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

class ActionRow extends StatelessWidget {
  final Function navigate;

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
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.black.withOpacity(0),
                context: context,
                builder: ((context) => Container(
                    height: 330,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(children: [
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(children: [
                            const DiscardButton(),
                            const Divider(),
                            SaveButton(
                              navigate: navigate,
                            ),
                          ])),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                              width: double.infinity,
                              height: 80,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: const Center(
                                  child: Text(
                                "閉じる",
                                style: TextStyle(
                                    color: headingColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))))
                    ]))));
          },
        ),
        SubmitButton(navigate: navigate),
      ],
    );
  }
}

class DiscardButton extends HookConsumerWidget {
  const DiscardButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void resetForm() {
      ref.watch(workErrorProvider.notifier).state = false;
      ref.watch(workImageErrorProvider.notifier).state = false;
      ref.watch(categoryErrorProvider.notifier).state = false;
      ref.watch(praiseTitleErrorProvider.notifier).state = false;
      ref.watch(praiseContentErrorProvider.notifier).state = false;
      ref.watch(letterTitleErrorProvider.notifier).state = false;
      ref.watch(letterContentErrorProvider.notifier).state = false;

      ref.watch(workProvider.notifier).state = null;
      ref.watch(workImageProvider.notifier).state = null;
      ref.watch(categoryProvider.notifier).state = null;
      ref.watch(hashtagsProvider.notifier).state = List.empty();
      ref.watch(praiseTitleProvider.notifier).state = "";
      ref.watch(praiseContentProvider.notifier).state = "";
      ref.watch(praiseSpoiledProvider.notifier).state = false;
      ref.watch(letterTitleProvider.notifier).state = "";
      ref.watch(letterContentProvider.notifier).state = "";
      ref.watch(letterSpoiledProvider.notifier).state = false;

      ref.watch(draftIDProvider.notifier).state = null;
    }

    final deleteDraftMutation =
        useMutation$DeleteDraft(WidgetOptions$Mutation$DeleteDraft());

    return deleteDraftMutation.result.isLoading
        ? const SizedBox(
            height: 80,
            child: Center(child: CircularProgressIndicator()),
          )
        : GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async {
              if (ref.watch(draftIDProvider) != null) {
                final result = deleteDraftMutation
                    .runMutation(Variables$Mutation$DeleteDraft(
                        input: Input$DeleteDraftInput(
                  draftId: ref.watch(draftIDProvider)!,
                  userID: ref.watch(userProvider).id,
                )));
                await result.networkResult;
                ref.watch(draftIDProvider.notifier).state = null;
                resetForm();
              } else {
                resetForm();
              }
              Navigator.of(context).pop();
            },
            child: const SizedBox(
                height: 80,
                child: Center(
                    child: Text(
                  "破棄する",
                  style: TextStyle(
                      color: redErrorColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))));
  }
}

class SaveButton extends HookConsumerWidget {
  final Function navigate;
  const SaveButton({super.key, required this.navigate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void resetForm() {
      ref.watch(workErrorProvider.notifier).state = false;
      ref.watch(workImageErrorProvider.notifier).state = false;
      ref.watch(categoryErrorProvider.notifier).state = false;
      ref.watch(praiseTitleErrorProvider.notifier).state = false;
      ref.watch(praiseContentErrorProvider.notifier).state = false;
      ref.watch(letterTitleErrorProvider.notifier).state = false;
      ref.watch(letterContentErrorProvider.notifier).state = false;

      ref.watch(workProvider.notifier).state = null;
      ref.watch(workImageProvider.notifier).state = null;
      ref.watch(categoryProvider.notifier).state = null;
      ref.watch(hashtagsProvider.notifier).state = List.empty();
      ref.watch(praiseTitleProvider.notifier).state = "";
      ref.watch(praiseContentProvider.notifier).state = "";
      ref.watch(praiseSpoiledProvider.notifier).state = false;
      ref.watch(letterTitleProvider.notifier).state = "";
      ref.watch(letterContentProvider.notifier).state = "";
      ref.watch(letterSpoiledProvider.notifier).state = false;
    }

    final createDraftMutation =
        useMutation$CreateDraft(WidgetOptions$Mutation$CreateDraft());
    final createDraftMutationResult = createDraftMutation.result;
    final updateDraftMutation =
        useMutation$UpdateDraft(WidgetOptions$Mutation$UpdateDraft());
    final updateDraftMutationResult = updateDraftMutation.result;

    return createDraftMutationResult.isLoading ||
            updateDraftMutationResult.isLoading
        ? const SizedBox(
            height: 80,
            child: Center(child: CircularProgressIndicator()),
          )
        : GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async {
              if (ref.watch(draftIDProvider) == null) {
                final result = createDraftMutation.runMutation(
                    Variables$Mutation$CreateDraft(
                        createDraftInput: Input$CreateDraftInput(
                            praiseTitle: ref.watch(praiseTitleProvider),
                            praiseContent: ref.watch(praiseContentProvider),
                            praiseSpoiled: ref.watch(praiseSpoiledProvider),
                            letterTitle: ref.watch(letterTitleProvider),
                            letterContent: ref.watch(letterContentProvider),
                            letterSpoiled: ref.watch(letterSpoiledProvider),
                            ownerID: ref.watch(userProvider).id,
                            hashtagIDs: ref
                                .watch(hashtagsProvider)
                                .where((h) => h.id != "")
                                .map((m) => m.id)
                                .toList(),
                            workID: ref.watch(workProvider) == null
                                ? null
                                : ref.watch(workProvider)!.id,
                            categoryID:
                                ref.watch(categoryProvider)?.toString()),
                        hashtagTitles: ref
                            .watch(hashtagsProvider)
                            .where((h) => h.id == "")
                            .map((h) => h.title)
                            .toList()));
                if ((await result.networkResult)!.hasException) {
                  return;
                }
              } else {
                final result = updateDraftMutation.runMutation(
                    Variables$Mutation$UpdateDraft(
                        id: ref.watch(draftIDProvider)!,
                        updateDraftInput: Input$UpdateDraftInput(
                            praiseTitle: ref.watch(praiseTitleProvider),
                            praiseContent: ref.watch(praiseContentProvider),
                            praiseSpoiled: ref.watch(praiseSpoiledProvider),
                            letterTitle: ref.watch(letterTitleProvider),
                            letterContent: ref.watch(letterContentProvider),
                            letterSpoiled: ref.watch(letterSpoiledProvider),
                            ownerID: ref.watch(userProvider).id,
                            addHashtagIDs: ref
                                .watch(hashtagsProvider)
                                .where((h) => h.id != "")
                                .map((m) => m.id)
                                .toList(),
                            workID: ref.watch(workProvider) == null
                                ? null
                                : ref.watch(workProvider)!.id,
                            categoryID:
                                ref.watch(categoryProvider)?.toString()),
                        hashtagTitles: ref
                            .watch(hashtagsProvider)
                            .where((h) => h.id == "")
                            .map((h) => h.title)
                            .toList()));
                if ((await result.networkResult)!.hasException) {
                  return;
                }
              }
              resetForm();
              ref.watch(draftIDProvider.notifier).state = null;
              navigate();
            },
            child: const SizedBox(
                height: 80,
                child: Center(
                    child: Text(
                  "下書きを保存",
                  style: TextStyle(
                      color: blueButtonColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))),
          );
  }
}

class SubmitButton extends HookConsumerWidget {
  final Function navigate;
  const SubmitButton({Key? key, required this.navigate}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool validate() {
      ref.watch(workErrorProvider.notifier).state =
          ref.watch(workProvider) == null;
      ref.watch(workImageErrorProvider.notifier).state =
          ref.watch(workProvider) != null &&
              ref.watch(workProvider)!.thumbnail == "" &&
              ref.watch(workImageProvider) == null;
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
      ref.watch(workImageProvider.notifier).state = null;
      ref.watch(categoryProvider.notifier).state = null;
      ref.watch(hashtagsProvider.notifier).state = List.empty();
      ref.watch(praiseTitleProvider.notifier).state = "";
      ref.watch(praiseContentProvider.notifier).state = "";
      ref.watch(praiseSpoiledProvider.notifier).state = false;
      ref.watch(letterTitleProvider.notifier).state = "";
      ref.watch(letterContentProvider.notifier).state = "";
      ref.watch(thumbnailProvider.notifier).state = null;
      ref.watch(letterSpoiledProvider.notifier).state = false;
    }

    final createPostMutation =
        useMutation$CreatePost(WidgetOptions$Mutation$CreatePost());
    final createPostsMutation =
        useMutation$CreatePosts(WidgetOptions$Mutation$CreatePosts());
    final deleteDraftMutation =
        useMutation$DeleteDraft(WidgetOptions$Mutation$DeleteDraft());
    final postMutationResult = createPostMutation.result;
    final postsMutationResult = createPostsMutation.result;
    final deleteDraftMutationResult = deleteDraftMutation.result;

    return postMutationResult.isLoading ||
            postsMutationResult.isLoading ||
            deleteDraftMutationResult.isLoading
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
                              .toList(),
                        ),
                        workImage: ref.watch(workImageProvider) == null
                            ? null
                            : MultipartFile.fromBytes(
                                '',
                                ref.watch(workImageProvider)!.readAsBytesSync(),
                              ),
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
                      workImage: ref.watch(workImageProvider) == null
                          ? null
                          : MultipartFile.fromBytes(
                              '',
                              ref.watch(workImageProvider)!.readAsBytesSync(),
                            ),
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
              if (ref.watch(draftIDProvider) != null) {
                final result = deleteDraftMutation
                    .runMutation(Variables$Mutation$DeleteDraft(
                        input: Input$DeleteDraftInput(
                  draftId: ref.watch(draftIDProvider)!,
                  userID: ref.watch(userProvider).id,
                )));
                await result.networkResult;
              }
              ref.watch(draftIDProvider.notifier).state = null;
              navigate();
            },
          );
  }
}
