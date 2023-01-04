import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/pages/common/praise.dart';
import 'package:hokkori/pages/common/praises.dart';
import 'package:hokkori/pages/home/letter_page.dart';
import 'package:hokkori/pages/home/works.dart';
import 'package:hokkori/pages/profile/profile_edit_page.dart';
import 'package:hokkori/pages/profile/profile_page.dart';
import 'package:hokkori/pages/search/custom_popup_route.dart';
import 'package:hokkori/pages/search/praise_page.dart';
import 'package:hokkori/pages/search/work_page.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/header.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class HomePageNavigator extends StatelessWidget {
  const HomePageNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const HomePage();
            break;
          case '/letter':
            builder = (BuildContext context) => const LetterPage();
            break;
          case '/profile':
            builder = (BuildContext context) => const ProfilePage();
            break;
          case '/edit':
            builder = (BuildContext context) => const ProfileEditPage();
            break;
          case '/work':
            builder = (BuildContext context) => const WorkPage();
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

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$Praises(Options$Query$Praises(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$Praises(
          first: 3,
        ))).result;

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
    final praises = result.parsedData?.posts.edges ?? [];
    final String? fetchMoreCursor = result.parsedData?.posts.pageInfo.endCursor;

    return Column(children: [
      const Header(),
      Expanded(
          child: Container(
              decoration: const BoxDecoration(color: backgroundColor),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 12),
                      child: TopPraises(
                        praises: praises,
                        result: result,
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  const HomeWorks(),
                  const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 40),
                      child: Letters(
                        first: 3,
                        hasFetchMoreButton: false,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                        width: 280,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 20),
                              backgroundColor: blueButtonColor,
                              side: const BorderSide(
                                  color: blueButtonColor, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/letter');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(width: 24),
                                Text(
                                  "もっと見る",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Icon(Icons.expand_circle_down,
                                    color: Colors.white)
                              ],
                            )))
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 12),
                      child: Praises(after: fetchMoreCursor)),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )))),
    ]);
  }
}

class TopPraises extends StatelessWidget {
  final List<Query$Praises$posts$edges?> praises;
  final QueryResult<Query$Praises> result;
  const TopPraises({Key? key, required this.praises, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(
              Icons.favorite_border,
              size: 30,
              color: primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "ほっこり",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ],
        ),
        ...praises
            .map((praise) => Praise(
                praise: praise!.node!,
                optimistic:
                    result.source == QueryResultSource.optimisticResult))
            .toList(),
      ],
    );
  }
}
