import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/search/category_page.dart';
import 'package:hokkori/pages/search/custom_popup_route.dart';
import 'package:hokkori/pages/search/hashtag_page.dart';
import 'package:hokkori/pages/search/praise_page.dart';
import 'package:hokkori/pages/search/search_input.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/pages/search/top_letters.dart';
import 'package:hokkori/pages/search/topic_contents.dart';
import 'package:hokkori/pages/search/work_page.dart';
import 'package:hokkori/utils/categories.dart';
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
          case '/work':
            builder = (BuildContext context) => const WorkPage();
            break;
          case '/category':
            builder = (BuildContext context) => const CategoryPage();
            break;
          case '/hashtag':
            builder = (BuildContext context) => const HashtagPage();
            break;
          case '/praise':
            return CustomPopupRoute(
                builder: (_) => const PraisePage(), settings: settings);
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
            child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(color: backgroundColor),
                child: SingleChildScrollView(
                    child: ref.watch(searchTextProvider) != ""
                        ? const Candidates()
                        : Column(
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration:
                                    const BoxDecoration(color: backgroundColor),
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
                              const SizedBox(height: 80),
                              Container(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 50),
                                  decoration: const BoxDecoration(
                                      color: backgroundColor),
                                  child: const TopLetters())
                            ],
                          ))))
      ],
    );
  }
}

class Candidates extends HookConsumerWidget {
  const Candidates({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = useQuery$SearchCandidates(Options$Query$SearchCandidates(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$SearchCandidates(
                searchText: ref.watch(searchTextProvider))))
        .result;
    if (result.hasException) {
      return Text(result.exception.toString());
    }
    if (result.isLoading) {
      return Container(
        color: backgroundColor,
        child: const Center(
            child: CircularProgressIndicator(
          color: primaryColor,
        )),
      );
    }
    final categories = masterCategories.where((masterCategory) =>
        masterCategory.name.contains(ref.watch(searchTextProvider)));
    final hashtags = result.parsedData?.hashtags.edges ?? [];
    final works = result.parsedData?.works.edges ?? [];

    const width = 35.0;
    return Column(
        children: categories
                .map((category) => ListTile(
                      leading: CircleAvatar(
                          backgroundColor: category.color,
                          radius: 16,
                          child: SvgPicture.asset(
                            'assets/category_${category.asset}.svg',
                            width: 18,
                          )),
                      onTap: () {
                        Navigator.of(context).pushNamed('/category',
                            arguments: CategoryPageArguments(category));
                      },
                      title: Text(category.name),
                    ))
                .toList() +
            works
                .map((work) => ListTile(
                      leading: work!.node!.thumbnail != ""
                          ? Image.network(work.node!.thumbnail!, width: width)
                          : Image.asset(
                              "assets/noimage.png",
                              width: width,
                            ),
                      onTap: () {
                        Navigator.of(context).pushNamed('/work',
                            arguments: WorkPageArguments(work.node!.id));
                      },
                      title: Text(work.node!.title),
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
