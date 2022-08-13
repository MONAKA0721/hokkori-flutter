import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/utils/categories.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/post.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:searchfield/searchfield.dart';

String createPost = r"""
mutation CreatePost(
  $createPostInput: CreatePostInput!
) {
  createPost(input: $createPostInput) {
    id
  }
}
""";

String listHashtags = r"""
query Hashtags($searchText: String) {
  hashtags(where: {titleContainsFold: $searchText}) {
    edges {
      node {
        id
        title
      }
    }
  }
}
""";

String searchWorks = r"""
query Works($searchText: String) {
  works(where: {titleContainsFold: $searchText}) {
    edges {
      node {
        id
        title
      }
    }
  }
}
""";

final hashtagProvider = StateProvider<String>((ref) => "");
final hashtagsProvider = StateNotifierProvider<HashtagsNotifier, List<String>>(
    (ref) => HashtagsNotifier());

class PostPage extends ConsumerStatefulWidget {
  final Function? navigate;
  const PostPage({super.key, required this.navigate});

  @override
  ConsumerState<PostPage> createState() => _PostPageState();
}

class _PostPageState extends ConsumerState<PostPage> {
  final titleController = TextEditingController();
  final hashtagController = TextEditingController();
  final praiseContentController = TextEditingController();
  final letterContentController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    hashtagController.dispose();
    praiseContentController.dispose();
    letterContentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(color: backgroundColor),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Row(children: const [
                    Icon(
                      Icons.chevron_left,
                      color: blueColor,
                      size: 20,
                    ),
                    Text(
                      "キャンセル",
                      style: TextStyle(color: blueColor, fontSize: 14),
                    ),
                  ]),
                  style: ElevatedButton.styleFrom(
                    primary: backgroundColor,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: blueColor, width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                ),
                Mutation(
                    options: MutationOptions(document: gql(createPost)),
                    builder: (RunMutation runMutation, QueryResult? result) {
                      if (result!.hasException) {
                        return Text(
                          result.exception.toString(),
                          style: const TextStyle(color: Colors.black),
                        );
                      }

                      if (result.isLoading) {
                        return const CircularProgressIndicator();
                      }

                      return ElevatedButton(
                        child: Row(children: const [
                          Text("つたえる", style: TextStyle(color: Colors.white)),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 20,
                          ),
                        ]),
                        style: ElevatedButton.styleFrom(
                          primary: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {
                          runMutation({
                            "createPostInput": {
                              "ownerID": ref.watch(userProvider).id,
                              "title": titleController.text,
                              "content": letterContentController.text,
                              "type": letterType,
                            }
                          });
                          widget.navigate!();
                        },
                      );
                    })
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: (SingleChildScrollView(
                        child: Column(
                      children: [
                        Step1(
                          titleController: titleController,
                          hashtagController: hashtagController,
                        ),
                        Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Step2(
                                  controller: praiseContentController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Step3(
                                  controller: letterContentController,
                                ),
                              ],
                            ),
                            ref.watch(hashtagProvider) != ""
                                ? Query(
                                    options: QueryOptions(
                                        document: gql(listHashtags),
                                        variables: {
                                          'searchText':
                                              ref.watch(hashtagProvider),
                                        }),
                                    builder: (QueryResult result,
                                        {Future<QueryResult?> Function()?
                                            refetch,
                                        FetchMore? fetchMore}) {
                                      if (result.hasException) {
                                        return Text(
                                            result.exception.toString());
                                      }

                                      if (result.isLoading) {
                                        return const Center(
                                            child: CircularProgressIndicator());
                                      }

                                      var posts =
                                          result.data?['hashtags']['edges'];

                                      return posts.isNotEmpty
                                          ? Container(
                                              height: 300,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white),
                                              child: ListView.builder(
                                                itemCount: posts.length,
                                                itemBuilder: (context, index) {
                                                  final post =
                                                      posts[index]['node'];
                                                  return SizedBox(
                                                      height: 20,
                                                      child: ListTile(
                                                        dense: true,
                                                        onTap: () {
                                                          ref
                                                              .read(
                                                                  hashtagsProvider
                                                                      .notifier)
                                                              .addHashtag(post[
                                                                  'title']);
                                                          ref
                                                              .read(
                                                                  hashtagProvider
                                                                      .notifier)
                                                              .state = "";
                                                          hashtagController
                                                              .clear();
                                                        },
                                                        title: Text("#" +
                                                            post['title']),
                                                      ));
                                                },
                                              ),
                                            )
                                          : Container();
                                    })
                                : Container(),
                          ],
                        )
                      ],
                    ))))),
          ])),
    );
  }
}

class Step1 extends ConsumerStatefulWidget {
  final TextEditingController titleController, hashtagController;
  const Step1({
    super.key,
    required this.titleController,
    required this.hashtagController,
  });

  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends ConsumerState<Step1> {
  int? selectedCategoryID;
  List<String> suggestions = [
    'suggestion 1',
    'suggestion 2',
  ];
  final _workController = TextEditingController();

  @override
  void dispose() {
    _workController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> hashtags = ref.watch(hashtagsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "Step 01",
              style: TextStyle(
                  color: blueColor, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "どんな作品ですか？*",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              "assets/noimage.png",
              width: 100,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(children: [
              TextField(
                controller: widget.titleController,
                decoration: const InputDecoration(
                    hintText: "タイトルを入力...",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ),
              Query(
                  options: QueryOptions(
                      document: gql(searchWorks),
                      variables: {'searchText': _workController.text}),
                  builder: (QueryResult result,
                      {Future<QueryResult?> Function()? refetch,
                      FetchMore? fetchMore}) {
                    print(result);
                    if (result.hasException) {
                      return Text(result.exception.toString());
                    }

                    if (result.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    var works = result.data?['works']['edges'];
                    return works.isNotEmpty
                        ? SearchField(
                            suggestions: works
                                .map((e) => SearchFieldListItem(e['node']['id'],
                                    child: Text(e['node']['title'])))
                                .toList(),
                            // hasOverlay: false,
                            maxSuggestionsInViewPort: 6,
                          )
                        : Container();
                  }),
              SizedBox(
                  width: double.infinity,
                  child: DropdownButton2(
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffF5F7FA),
                      ),
                      isExpanded: true,
                      hint: const Text("カテゴリを選択"),
                      itemPadding: const EdgeInsets.all(0),
                      items: _addDividersAfterCategories(masterCategories),
                      customItemsIndexes: _getDividersIndexes(),
                      customItemsHeight: 4,
                      value: selectedCategoryID,
                      onChanged: (value) {
                        setState(() => {selectedCategoryID = value as int});
                      })),
            ]))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
            spacing: 8,
            runSpacing: 5,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...hashtags
                  .map((hashtag) => Hashtag(
                        title: hashtag,
                      ))
                  .toList(),
              HashtagTextfield(controller: widget.hashtagController)
            ])
      ],
    );
  }
}

class Hashtag extends StatelessWidget {
  final String title;
  const Hashtag({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("#" + title);
  }
}

class HashtagTextfield extends ConsumerWidget {
  final TextEditingController controller;
  const HashtagTextfield({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 150,
        child: TextField(
          controller: controller,
          onChanged: (text) {
            ref.watch(hashtagProvider.notifier).state = text;
          },
          style: const TextStyle(fontSize: 12),
          decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffF2F2F2),
              contentPadding: const EdgeInsets.all(8),
              isDense: true,
              hintText: "#ハッシュタグを入力",
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff2f2f2))),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xfff2f2f2)),
              ),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xfff2f2f2)),
                  borderRadius: BorderRadius.circular(5))),
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
                  child: SvgPicture.asset('assets/palette.svg'),
                  radius: 13,
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

List<int> _getDividersIndexes() {
  List<int> _dividersIndexes = [];
  for (var i = 0; i < (masterCategories.length * 2) - 1; i++) {
    //Dividers indexes will be the odd indexes
    if (i.isOdd) {
      _dividersIndexes.add(i);
    }
  }
  return _dividersIndexes;
}

class Step2 extends StatelessWidget {
  final TextEditingController controller;
  const Step2({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [
          Text(
            "Step 02",
            style: TextStyle(
                color: blueColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "ほっこりメッセージを入力*",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ]),
        TextField(
          controller: controller,
        ),
      ],
    );
  }
}

class Step3 extends StatelessWidget {
  final TextEditingController controller;
  const Step3({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Step 03",
              style: TextStyle(
                  color: blueColor, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "文字数を気にせずつたえる",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        TextField(
          controller: controller,
        ),
      ],
    );
  }
}

class HashtagsNotifier extends StateNotifier<List<String>> {
  HashtagsNotifier() : super([]);

  void addHashtag(String hashtag) {
    state = [...state, hashtag];
  }
}
