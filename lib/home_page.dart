import 'package:flutter/material.dart';
import 'package:hokkori/utils/header.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class HomePageNavigator extends StatelessWidget {
  const HomePageNavigator({Key? key}) : super(key: key);

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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [Header(), Expanded(child: Scaffold(body: Posts()))]);
  }
}

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
        child: Row(
          children: [
            Image.network(
              "https://source.unsplash.com/random/100x150",
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.lightbulb), Text("ここはタイトルです")],
                ),
                const Text(
                  "ここはコンテンツです",
                ),
                Row(
                  children: const [
                    CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i1.wp.com/hanenews.com/wp-content/uploads/2018/12/b34ea738486a9ced02c5bc7152595187.jpg?fit=265%2C335&ssl=1")),
                    Text("満島ひかり"),
                    Spacer(),
                    Icon(Icons.favorite),
                    Text("27"),
                  ],
                )
              ],
            ))
          ],
        ),
      );
    });
  }
}
