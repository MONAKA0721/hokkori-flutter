import 'package:flutter/material.dart';
import 'package:hokkori/pages/tutorial/fifth.dart';
import 'package:hokkori/pages/tutorial/first.dart';
import 'package:hokkori/pages/tutorial/fourth.dart';
import 'package:hokkori/pages/tutorial/second.dart';
import 'package:hokkori/pages/tutorial/third.dart';

class TutorialNavigator extends StatelessWidget {
  final Function loginAction;
  const TutorialNavigator({super.key, required this.loginAction});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const Tutorial1();
            break;
          case '/2':
            builder = (BuildContext context) => const Tutorial2();
            break;
          case '/3':
            builder = (BuildContext context) => const Tutorial3();
            break;
          case '/4':
            builder = (BuildContext context) => const Tutorial4();
            break;
          case '/5':
            builder =
                (BuildContext context) => Tutorial5(loginAction: loginAction);
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }

        return MaterialPageRoute<Widget>(builder: builder, settings: settings);
      },
    );
  }
}
