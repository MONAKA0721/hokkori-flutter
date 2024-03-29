import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/post/action_row.dart';
import 'package:hokkori/pages/post/draft_page.dart';
import 'package:hokkori/pages/post/post_page.graphql.dart';
import 'package:hokkori/pages/search/custom_popup_route.dart';
import 'package:hokkori/utils/categories.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'label.dart';
import 'model.dart';

class PostPageNavigator extends HookWidget {
  final Function navigate;
  const PostPageNavigator({Key? key, required this.navigate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final client = useGraphQLClient();
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => PostPage(
                  navigate: navigate,
                  client: client,
                );
            break;
          case '/draft':
            return CustomPopupRoute(
                builder: (_) => const DraftPage(), settings: settings);
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<Widget>(builder: builder, settings: settings);
      },
    );
  }
}

final draftIDProvider = StateProvider<String?>((ref) => null);

final workImageProvider = StateProvider<File?>((ref) => null);
final workImageErrorProvider = StateProvider<bool>((ref) => false);
final workErrorProvider = StateProvider<bool>((ref) => false);
final categoryProvider = StateProvider<int?>((ref) => null);
final categoryErrorProvider = StateProvider<bool>((ref) => false);
final hashtagsProvider =
    StateProvider<List<HashtagModel>>((ref) => List.empty());
final praiseTitleProvider = StateProvider<String>(
  (ref) => "",
);
final praiseTitleErrorProvider = StateProvider<bool>((ref) => false);
final praiseContentProvider = StateProvider<String>(
  (ref) => "",
);
final praiseContentErrorProvider = StateProvider<bool>((ref) => false);
final praiseSpoiledProvider = StateProvider<bool>((ref) => false);
final letterTitleProvider = StateProvider<String>(
  (ref) => "",
);
final letterTitleErrorProvider = StateProvider<bool>((ref) => false);
final letterContentProvider = StateProvider<String>(
  (ref) => "",
);
final letterContentErrorProvider = StateProvider<bool>((ref) => false);
final letterSpoiledProvider = StateProvider<bool>((ref) => false);

class PostPage extends ConsumerStatefulWidget {
  final GraphQLClient client;
  final Function navigate;
  const PostPage({super.key, required this.navigate, required this.client});

  @override
  ConsumerState<PostPage> createState() => _PostPageState();
}

class _PostPageState extends ConsumerState<PostPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (ref.watch(workProvider) == null &&
          ref.watch(workImageProvider) == null &&
          ref.watch(categoryProvider) == null &&
          ref.watch(hashtagsProvider).isEmpty &&
          ref.watch(praiseTitleProvider) == "" &&
          ref.watch(praiseContentProvider) == "" &&
          ref.watch(letterTitleProvider) == "" &&
          ref.watch(letterContentProvider) == "" &&
          ref.watch(thumbnailProvider) == null) {
        var queryResult = await widget.client.query$Drafts(Options$Query$Drafts(
            fetchPolicy: FetchPolicy.networkOnly,
            variables:
                Variables$Query$Drafts(userID: ref.watch(userProvider).id)));
        final drafts = queryResult.parsedData?.drafts.edges;
        if (drafts!.isNotEmpty) {
          Navigator.of(context).pushNamed('/draft',
              arguments: DraftPageArguments(
                drafts,
              ));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(color: backgroundColor),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(children: [
            ActionRow(
              navigate: widget.navigate,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(
              children: [
                ref.watch(workErrorProvider) ||
                        ref.watch(categoryErrorProvider) ||
                        ref.watch(praiseTitleErrorProvider) ||
                        ref.watch(praiseContentErrorProvider) ||
                        ref.watch(letterTitleErrorProvider) ||
                        ref.watch(letterContentErrorProvider)
                    ? Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: redErrorColor, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.error,
                              color: redErrorColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "記入漏れの項目があります",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: redErrorColor),
                            )
                          ],
                        ))
                    : const Text(
                        "あなたのほっこりをきかせてください",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 0.1,
                            blurRadius: 5,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        const Step1(),
                        const SizedBox(
                          height: 20,
                        ),
                        const Step2(),
                        const SizedBox(
                          height: 20,
                        ),
                        Step3(),
                      ],
                    )),
              ],
            ))),
          ])),
    );
  }
}

class Step1 extends ConsumerStatefulWidget {
  const Step1({
    super.key,
  });

  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends ConsumerState<Step1> {
  final _picker = ImagePicker();

  Widget _workPopupItemBuilder(
    BuildContext context,
    WorkModel? item,
    bool isSelected,
  ) {
    final thumbnail = item?.thumbnail;
    const width = 35.0;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
      child: ListTile(
        selected: isSelected,
        title: Text(item?.title ?? ''),
        leading: thumbnail == null || thumbnail.isEmpty
            ? Image.asset(
                "assets/noimage.png",
                width: width,
              )
            : Image.network(
                thumbnail,
                width: width,
              ),
      ),
    );
  }

  Widget _hashtagPopupItemBuilder(
    BuildContext context,
    HashtagModel? item,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
      child: ListTile(
        selected: isSelected,
        title: Text(item?.title ?? ''),
        leading: const Icon(
          Icons.tag,
          size: 30,
        ),
      ),
    );
  }

  Future<List<WorkModel>> getWorkData(
      String filter, GraphQLClient client) async {
    if (filter == "") return [];
    var queryResult = await client.query$SearchWorks(Options$Query$SearchWorks(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$SearchWorks(searchText: filter)));

    final works = queryResult.parsedData?.works.edges;

    return WorkModel.fromList(works!);
  }

  Future<List<HashtagModel>> getHashtagData(
      String filter, GraphQLClient client) async {
    if (filter == "") return [];
    var queryResult = await client.query$SearchHashtags(
        Options$Query$SearchHashtags(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$SearchHashtags(searchText: filter)));

    final hashtags = queryResult.parsedData?.hashtags.edges;

    final list = HashtagModel.fromList(hashtags!);
    if (!list.map((e) => e.title).contains(filter)) {
      list.insert(0, HashtagModel(id: "", title: filter));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final work = ref.watch(workProvider);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                RequiredLabel(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "投稿情報",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: headingColor),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                work == null || work.thumbnail == ""
                    ? GestureDetector(
                        onTap: () async {
                          final _image = await _picker.pickImage(
                              source: ImageSource.gallery,
                              requestFullMetadata: false);
                          if (_image == null) return;
                          ref.watch(workImageProvider.notifier).state =
                              File(_image.path);
                        },
                        child: ref.watch(workImageProvider) != null
                            ? Image.file(
                                ref.watch(workImageProvider)!,
                                width: 100,
                                height: 100,
                              )
                            : ref.watch(workImageErrorProvider) == true
                                ? Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.red)),
                                    child: Image.asset(
                                      "assets/noimage.png",
                                      width: 100,
                                      height: 100,
                                    ))
                                : Image.asset(
                                    "assets/noimage.png",
                                    width: 100,
                                    height: 100,
                                  ))
                    : Image.network(
                        work.thumbnail!,
                        width: 100,
                        height: 100,
                      ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(children: [
                  GraphQLConsumer(
                      builder: (client) => DropdownSearch<WorkModel>(
                            dropdownDecoratorProps: DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ref.watch(workErrorProvider)
                                              ? redErrorColor
                                              : headingColor),
                                    ),
                                    hintText: "作品名を入力...",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ref.watch(workErrorProvider)
                                            ? redErrorColor
                                            : Colors.grey))),
                            onChanged: (value) => {
                              ref.watch(workProvider.notifier).state = value
                            },
                            selectedItem: ref.watch(workProvider),
                            asyncItems: (filter) => getWorkData(filter, client),
                            compareFn: (i, s) => i.isEqual(s),
                            popupProps:
                                PopupPropsMultiSelection.modalBottomSheet(
                              isFilterOnline: true,
                              showSelectedItems: true,
                              showSearchBox: true,
                              itemBuilder: _workPopupItemBuilder,
                            ),
                          )),
                  SizedBox(
                      width: double.infinity,
                      child: DropdownButton2(
                          iconEnabledColor: ref.watch(categoryErrorProvider)
                              ? redErrorColor
                              : null,
                          underline: Container(
                            height: 1.0,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: ref.watch(categoryErrorProvider)
                                        ? redErrorColor
                                        : Colors.grey,
                                    width: 0.7),
                              ),
                            ),
                          ),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffF5F7FA),
                          ),
                          isExpanded: true,
                          hint: Text(
                            "カテゴリを選択",
                            style: TextStyle(
                                color: ref.watch(categoryErrorProvider)
                                    ? redErrorColor
                                    : null),
                          ),
                          buttonHeight: 60,
                          itemPadding: const EdgeInsets.all(0),
                          items: _addDividersAfterCategories(masterCategories),
                          customItemsHeights: _getCustomItemsHeights(),
                          value: ref.watch(categoryProvider),
                          onChanged: (value) {
                            setState(() => {
                                  ref.watch(categoryProvider.notifier).state =
                                      value as int
                                });
                          })),
                ]))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GraphQLConsumer(
                builder: (client) => Theme(
                    data: Theme.of(context)
                        .copyWith(primaryColorLight: const Color(0xffF2F2F2)),
                    child: DropdownSearch<HashtagModel>.multiSelection(
                      itemAsString: (m) => "#${m.toString()}",
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                        hintText: "#ハッシュタグを入力",
                      )),
                      compareFn: (i, s) => i.isEqual(s),
                      onChanged: (value) =>
                          {ref.watch(hashtagsProvider.notifier).state = value},
                      selectedItems: ref.watch(hashtagsProvider),
                      asyncItems: (filter) => getHashtagData(filter, client),
                      popupProps: PopupPropsMultiSelection.modalBottomSheet(
                        isFilterOnline: true,
                        showSelectedItems: true,
                        showSearchBox: true,
                        itemBuilder: _hashtagPopupItemBuilder,
                      ),
                    ))),
          ],
        ));
  }
}

List<DropdownMenuItem<int>> _addDividersAfterCategories(
    List<Category> categories) {
  List<DropdownMenuItem<int>> _menuItems = [];
  for (var category in categories) {
    _menuItems.addAll(
      [
        DropdownMenuItem<int>(
          value: category.id,
          child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(children: [
                CircleAvatar(
                  child: SvgPicture.asset(
                    'assets/category_${category.asset}.svg',
                    width: 18,
                  ),
                  radius: 14,
                  backgroundColor: category.color,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(category.name),
              ])),
        ),
        //If it's last item, we will not add Divider after it.
        if (category != categories.last)
          const DropdownMenuItem<int>(
            enabled: false,
            child: Divider(),
          ),
      ],
    );
  }
  return _menuItems;
}

List<double> _getCustomItemsHeights() {
  List<double> _heights = [];
  for (var i = 0; i < (masterCategories.length * 2) - 1; i++) {
    if (i.isEven) {
      _heights.add(60);
    }
    //Dividers indexes will be the odd indexes
    if (i.isOdd) {
      _heights.add(4);
    }
  }
  return _heights;
}

class Step2 extends ConsumerWidget {
  const Step2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const RequiredLabel(),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "ほっこりメッセージでつたえる",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: headingColor),
                  ),
                  Text(
                    "(150字以内)",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: headingColor),
                  )
                ],
              )
            ]),
            TextFormField(
              initialValue: ref.watch(praiseTitleProvider),
              cursorColor: blueButtonColor,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: ref.watch(praiseTitleErrorProvider)
                            ? redErrorColor
                            : headingColor),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: blueButtonColor),
                  ),
                  hintText: " 見出しを入力...",
                  hintStyle: TextStyle(
                      color: ref.watch(praiseTitleErrorProvider)
                          ? redErrorColor
                          : null)),
              onChanged: (value) {
                ref.watch(praiseTitleProvider.notifier).state = value;
              },
            ),
            TextFormField(
              initialValue: ref.watch(praiseContentProvider),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              cursorColor: blueButtonColor,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: ref.watch(praiseContentErrorProvider)
                            ? redErrorColor
                            : headingColor),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: blueButtonColor),
                  ),
                  hintText: " 文章を入力",
                  hintStyle: TextStyle(
                      color: ref.watch(praiseContentErrorProvider)
                          ? redErrorColor
                          : null)),
              onChanged: (value) {
                ref.watch(praiseContentProvider.notifier).state = value;
              },
            ),
            CheckboxListTile(
              side: MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(width: 1.0, color: Colors.grey)),
              checkColor: blueButtonColor,
              activeColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              value: ref.watch(praiseSpoiledProvider),
              title: const Text(
                'この投稿はネタバレを含む',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                ref.watch(praiseSpoiledProvider.notifier).state = value!;
              },
            ),
          ],
        ));
  }
}

class Step3 extends ConsumerWidget {
  final _picker = ImagePicker();
  Step3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final letterThumbnail = ref.watch(thumbnailProvider);
    const thumbnailSize = 100.0;

    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                OptionalLabel(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "レターでつたえる",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: headingColor),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
                child: letterThumbnail == null
                    ? Image.asset(
                        'assets/noimage.png',
                        width: thumbnailSize,
                        height: thumbnailSize,
                      )
                    : Image.file(
                        letterThumbnail,
                        width: thumbnailSize,
                        height: thumbnailSize,
                      ),
                onTap: () async {
                  final _image = await _picker.pickImage(
                      source: ImageSource.gallery, requestFullMetadata: false);
                  if (_image == null) return;
                  ref.watch(thumbnailProvider.notifier).state =
                      File(_image.path);
                }),
            TextFormField(
              cursorColor: blueButtonColor,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: ref.watch(letterTitleErrorProvider)
                            ? redErrorColor
                            : headingColor),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: blueButtonColor),
                  ),
                  hintText: " 見出しを入力...",
                  hintStyle: TextStyle(
                      color: ref.watch(letterTitleErrorProvider)
                          ? redErrorColor
                          : null)),
              initialValue: ref.watch(letterTitleProvider),
              onChanged: (value) {
                ref.watch(letterTitleProvider.notifier).state = value;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              cursorColor: blueButtonColor,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: ref.watch(letterContentErrorProvider)
                            ? redErrorColor
                            : headingColor),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: blueButtonColor),
                  ),
                  hintText: " 文章を入力",
                  hintStyle: TextStyle(
                      color: ref.watch(letterContentErrorProvider)
                          ? redErrorColor
                          : null)),
              initialValue: ref.watch(letterContentProvider),
              onChanged: (value) {
                ref.watch(letterContentProvider.notifier).state = value;
              },
            ),
            CheckboxListTile(
              side: MaterialStateBorderSide.resolveWith(
                  (states) => const BorderSide(width: 1.0, color: Colors.grey)),
              checkColor: blueButtonColor,
              activeColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              value: ref.watch(letterSpoiledProvider),
              title: const Text(
                'この投稿はネタバレを含む',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                ref.watch(letterSpoiledProvider.notifier).state = value!;
              },
            ),
          ],
        ));
  }
}
