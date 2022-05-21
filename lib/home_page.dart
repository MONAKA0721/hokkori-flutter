import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/utils/colors.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      "https://source.unsplash.com/random/100x100",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: primaryColor,
                                radius: 15,
                                child: SvgPicture.asset('assets/palette.svg')),
                            const SizedBox(
                              width: 5,
                            ),
                            const Expanded(
                                child: Text(
                              "スマッシュブラザーズ SP が面白い理由",
                              style: TextStyle(fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          letter['content'],
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.person,
                              color: Color(0xffa2a2a2),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "accountname",
                              style: TextStyle(
                                  color: Color(0xffa2a2a2),
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite,
                              color: Color(0xffa2a2a2),
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "27",
                              style: TextStyle(
                                  color: Color(0xffa2a2a2), fontSize: 14),
                            ),
                            SizedBox(
                              width: 10,
                            ),
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
