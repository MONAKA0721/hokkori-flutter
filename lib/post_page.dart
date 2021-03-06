import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/post.dart';

String createPost = r"""
mutation CreatePost(
  $createPostInput: CreatePostInput!
) {
  createPost(input: $createPostInput) {
    id
  }
}
""";

class PostPage extends StatefulWidget {
  final Function? navigate;
  const PostPage({super.key, required this.navigate});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final titleController = TextEditingController();
  final praiseContentController = TextEditingController();
  final letterContentController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
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
              height: 30,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: (Column(
                  children: [
                    Step1(controller: titleController),
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
                ))),
          ])),
    );
  }
}

class Step1 extends StatelessWidget {
  final TextEditingController controller;
  const Step1({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              "どんな作品ですか？",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        TextField(
          controller: controller,
        )
      ],
    );
  }
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
            "ほっこりメッセージを入力",
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
