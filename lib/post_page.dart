import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/utils/colors.dart';

String createLetter = r"""
mutation CreatePost(
  $createPostInput: CreatePostInput!
) {
  createPost(input: $createLetterInput) {
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
  final contentController = TextEditingController();

  @override
  void dispose() {
    contentController.dispose();
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
                    options: MutationOptions(document: gql(createLetter)),
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
                              "title": "",
                              "content": contentController.text,
                              "type": ""
                            }
                          });
                          widget.navigate!();
                        },
                      );
                    })
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: contentController,
                autofocus: true,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "あなたの思いを伝える"),
              ),
            )
          ])),
    );
  }
}
