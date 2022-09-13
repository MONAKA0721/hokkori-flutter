import 'package:flutter/material.dart';
import 'package:hokkori/pages/search/search_input.dart';
import 'package:hokkori/pages/search/top_letters.dart';
import 'package:hokkori/pages/search/topic_contents.dart';
import 'package:hokkori/utils/content_type.dart';
import 'package:hokkori/utils/header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchTextProvider = StateProvider<String>((ref) => "");

class SearchPageNavigator extends StatelessWidget {
  const SearchPageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const SearchPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<Widget>(builder: builder, settings: settings);
      },
    );
  }
}

class SearchPage extends ConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Header(),
        const SearchInput(),
        Expanded(
            child: SingleChildScrollView(
                child: ref.watch(searchTextProvider) != ""
                    ? Text(ref.watch(searchTextProvider))
                    : Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, bottom: 50),
                            decoration:
                                const BoxDecoration(color: Color(0xffF8F7F7)),
                            child: Column(
                              children: const [
                                TopicContents(type: ContentType.praise),
                                SizedBox(
                                  height: 50,
                                ),
                                TopicContents(type: ContentType.work),
                              ],
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 20, right: 20, bottom: 50),
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: const TopLetters())
                        ],
                      )))
      ],
    );
  }
}

class Candidates extends StatelessWidget {
  const Candidates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      "test",
      "test",
      "test",
    ];
    return Column(
        children: items
            .map((item) => ListTile(
                  title: Text(item),
                ))
            .toList());
  }
}
