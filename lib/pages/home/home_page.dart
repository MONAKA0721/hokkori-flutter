import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/pages/home/home_page.graphql.dart';
import 'package:hokkori/pages/home/praise.dart';
import 'package:hokkori/pages/home/work.dart';
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
          // case '/detail':
          //   builder = (BuildContext context) => const DetailPage();
          //   break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }

        return MaterialPageRoute<Widget>(builder: builder, settings: settings);
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Header(),
      Expanded(
          child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
              decoration: const BoxDecoration(color: backgroundColor),
              child: SingleChildScrollView(
                  child: Column(
                children: const [
                  TopPraises(),
                  SizedBox(
                    height: 40,
                  ),
                  TopWorks(),
                  TopLetters(),
                  SizedBox(
                    height: 30,
                  ),
                  Praises(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )))),
    ]);
  }
}

class TopPraises extends HookWidget {
  const TopPraises({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$TopPraises(Options$Query$TopPraises(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$TopPraises(first: 3)))
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
    final praises = result.parsedData?.posts.edges ?? [];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "ほっこり",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ...praises.map((praise) => Praise(praise: praise!.node!)).toList()
    ]);
  }
}

class TopWorks extends HookWidget {
  const TopWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$TopWorks(Options$Query$TopWorks(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$TopWorks(first: 6)))
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
    final works = result.parsedData?.works.edges ?? [];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "おすすめ作品",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) => Work(work: works[index]!.node!),
            itemCount: works.length,
          ))
    ]);
  }
}

class Praises extends HookWidget {
  const Praises({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$TopPraises(Options$Query$TopPraises(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$TopPraises(first: 100)))
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
    final praises = result.parsedData?.posts.edges ?? [];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "ほっこり",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ...praises.map((praise) => Praise(praise: praise!.node!)).toList()
    ]);
  }
}

class TopLetters extends HookWidget {
  const TopLetters({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$TopLetters(Options$Query$TopLetters(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$TopLetters(first: 3)))
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
    final letters = result.parsedData?.posts.edges ?? [];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "レター",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ...letters.map((letter) => Letter(letter: letter!.node!)).toList(),
      const SizedBox(
        height: 30,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              backgroundColor: blueHomeColor,
              side: const BorderSide(color: blueHomeColor, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: const [
                Text(
                  "もっと見る",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.chevron_right, color: Colors.white)
              ],
            ))
      ])
    ]);
  }
}
