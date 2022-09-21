import 'package:flutter/material.dart';
import 'package:hokkori/pages/search/hashtag_header.dart';
import 'package:hokkori/pages/search/hashtag_letters.dart';
import 'package:hokkori/pages/search/hashtag_praises.dart';

class HashtagPageArguments {
  final String id;
  final String title;

  HashtagPageArguments(this.id, this.title);
}

class HashtagPage extends StatelessWidget {
  const HashtagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as HashtagPageArguments;
    return Column(
      children: [
        HashtagHeader(title: args.title),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
                child: Column(
              children: [
                HashtagPraises(
                  hashtagID: args.id,
                  hashtagTitle: args.title,
                ),
                const SizedBox(
                  height: 40,
                ),
                HashtagLetters(
                  hashtagID: args.id,
                  hashtagTitle: args.title,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
          ),
        )
      ],
    );
  }
}
