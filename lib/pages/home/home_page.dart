import 'package:flutter/material.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/pages/home/praises.dart';
import 'package:hokkori/pages/home/works.dart';
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
              decoration: const BoxDecoration(color: backgroundColor),
              child: SingleChildScrollView(
                  child: Column(
                children: const [
                  HomePraises(),
                  SizedBox(
                    height: 40,
                  ),
                  HomeWorks(),
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 40),
                      child: Letters(first: 3)),
                  SizedBox(
                    height: 20,
                  )
                ],
              )))),
    ]);
  }
}
