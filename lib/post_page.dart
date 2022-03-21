import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String createLetter = r"""
mutation CreateLetter(
  $createLetterInput: CreateLetterInput!
) {
  createLetter(input: $createLetterInput) {
    id
    content
  }
}
""";

class PostPage extends StatefulWidget {
  final Function? navigate;
  const PostPage({Key? key, required this.navigate}) : super(key: key);

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
      appBar: AppBar(
        leading: TextButton(
          child: const Text(
            "休憩",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
        actions: [
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

                return TextButton(
                    onPressed: () {
                      runMutation({
                        "createLetterInput": {
                          "content": contentController.text,
                        }
                      });
                      widget.navigate!();
                    },
                    child: const Text(
                      "完成",
                      style: TextStyle(color: Colors.white),
                    ));
              })
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: TextField(
          controller: contentController,
          autofocus: true,
          decoration: const InputDecoration(
              border: InputBorder.none, hintText: "あなたの思いを伝える"),
        ),
      ),
    );
  }
}
