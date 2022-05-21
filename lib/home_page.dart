import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/utils/header.dart';

final navigatorKey = GlobalKey<NavigatorState>();

String listLetters = r"""
query Letters {
  letters {
    id
    content
  }
}
""";

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
    return Query(
        options: QueryOptions(
            document: gql(listLetters), fetchPolicy: FetchPolicy.networkOnly),
        builder: (QueryResult result,
            {Future<QueryResult?> Function()? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading');
          }

          List letters = result.data?['letters'] ?? [];
          return ListView.separated(
              padding: const EdgeInsets.all(12),
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1.5,
                  color: Colors.grey.shade300,
                );
              },
              itemCount: letters.length,
              itemBuilder: (context, index) {
                // TODO: GraphQL のクエリを最新順にする
                final letter = letters[letters.length - index - 1];
                return Row(
                  children: [
                    Image.network(
                      "https://source.unsplash.com/random/100x100",
                      width: 100,
                      height: 100,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.lightbulb),
                            Text("ここはタイトルです")
                          ],
                        ),
                        Text(
                          letter['content'],
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
                );
              });
        });
  }
}
