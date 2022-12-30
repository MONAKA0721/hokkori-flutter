import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/post/draft_page.graphql.dart';
import 'package:hokkori/pages/post/model.dart';
import 'package:hokkori/pages/post/post_page.dart';
import 'package:hokkori/pages/post/post_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Draft {}

class DraftPageArguments {
  final List<Query$Drafts$drafts$edges?> drafts;

  DraftPageArguments(this.drafts);
}

class DraftPage extends HookConsumerWidget {
  const DraftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as DraftPageArguments;
    final drafts = arguments.drafts;

    final client = useGraphQLClient();

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: blueButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16)),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 37,
                  ),
                  const Spacer(),
                  const Text(
                    "新しく作成する",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
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
                  const SizedBox(
                    width: 15,
                  )
                ],
              )),
          SizedBox(
              height: 400,
              child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.separated(
                      itemCount: drafts.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return const Text(
                            "書きかけの投稿",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          );
                        } else {
                          final draft = drafts[index - 1]!.node!;

                          return GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () async {
                                var queryResult = await client.query$GetDraft(
                                    Options$Query$GetDraft(
                                        fetchPolicy: FetchPolicy.networkOnly,
                                        variables: Variables$Query$GetDraft(
                                            id: drafts[index - 1]!.node!.id)));
                                final draft = queryResult.parsedData!.draft
                                    as Query$GetDraft$draft$$Draft;

                                final work = draft.work;
                                ref.watch(workProvider.notifier).state =
                                    work == null
                                        ? null
                                        : WorkModel(
                                            id: work.id,
                                            title: work.title,
                                            thumbnail: work.thumbnail);

                                final category = draft.category;
                                ref.watch(categoryProvider.notifier).state =
                                    category == null
                                        ? null
                                        : int.parse(category.id);

                                ref.watch(hashtagsProvider.notifier).state =
                                    draft.hashtags!
                                        .map((hashtag) => HashtagModel(
                                            id: hashtag.id,
                                            title: hashtag.title))
                                        .toList();

                                ref.watch(praiseTitleProvider.notifier).state =
                                    draft.praiseTitle;

                                ref
                                    .watch(praiseContentProvider.notifier)
                                    .state = draft.praiseContent;

                                ref
                                    .watch(praiseSpoiledProvider.notifier)
                                    .state = draft.praiseSpoiled;

                                ref.watch(letterTitleProvider.notifier).state =
                                    draft.letterTitle;

                                ref
                                    .watch(letterContentProvider.notifier)
                                    .state = draft.letterContent;

                                ref
                                    .watch(letterSpoiledProvider.notifier)
                                    .state = draft.praiseSpoiled;

                                ref.watch(draftIDProvider.notifier).state =
                                    draft.id;
                                Navigator.of(context).pop();
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "作品名:${draft.work == null ? "" : draft.work!.title}",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "カテゴリ:${draft.category == null ? "" : draft.category!.name}",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                            child: Text(
                                          drafts[index - 1]!.node!.praiseTitle,
                                          style: const TextStyle(fontSize: 16),
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                        const Icon(Icons.chevron_right)
                                      ])
                                ],
                              ));
                        }
                      },
                      separatorBuilder: (context, index) => const Divider(
                            color: Colors.black12,
                            thickness: 1,
                          )))),
        ]),
      ),
      const SizedBox(
        height: 10,
      ),
      IconButton(
        iconSize: 80,
        icon: SvgPicture.asset('assets/close.svg', width: 80),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      const Text(
        "閉じる",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )
    ]);
  }
}
