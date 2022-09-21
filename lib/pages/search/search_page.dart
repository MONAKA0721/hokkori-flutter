import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/pages/search/category_page.dart';
import 'package:hokkori/pages/search/hashtag_page.dart';
import 'package:hokkori/pages/search/search_input.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/pages/search/top_letters.dart';
import 'package:hokkori/pages/search/topic_contents.dart';
import 'package:hokkori/utils/colors.dart';
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
          case '/category':
            builder = (BuildContext context) => const CategoryPage();
            break;
          case '/hashtag':
            builder = (BuildContext context) => const HashtagPage();
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
                    ? const Candidates()
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

class Candidates extends HookConsumerWidget {
  const Candidates({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = useQuery$SearchCandidates(Options$Query$SearchCandidates(
            variables: Variables$Query$SearchCandidates(
                searchText: ref.watch(searchTextProvider))))
        .result;
    if (result.hasException) {
      return Text(result.exception.toString());
    }
    if (result.isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      );
    }
    final categories = result.parsedData?.categories.edges ?? [];
    final hashtags = result.parsedData?.hashtags.edges ?? [];

    return Column(
        children: categories
                .map((category) => ListTile(
                      leading: CircleAvatar(
                          backgroundColor: primaryColor,
                          radius: 16,
                          child: SvgPicture.asset(
                            'assets/palette.svg',
                            width: 18,
                          )),
                      onTap: () {
                        Navigator.of(context).pushNamed('/category',
                            arguments: CategoryPageArguments(
                                category!.node!.id, category.node!.name));
                      },
                      title: Text(category!.node!.name),
                    ))
                .toList() +
            hashtags
                .map((hashtag) => ListTile(
                      leading: const Icon(
                        Icons.tag,
                        size: 30,
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/hashtag',
                            arguments: HashtagPageArguments(
                                hashtag!.node!.id, hashtag.node!.title));
                      },
                      title: Text(hashtag!.node!.title),
                    ))
                .toList());
  }
}
