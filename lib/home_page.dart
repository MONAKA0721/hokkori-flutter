import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/header.dart';

final navigatorKey = GlobalKey<NavigatorState>();

String listPosts = r"""
query Posts {
  posts(orderBy: { direction: DESC, field: CREATE_TIME }) {
    edges {
      node {
        title
        id
        content
      }
    }
  }
}
""";

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
    return Column(
        children: const [Header(), Expanded(child: Scaffold(body: Posts()))]);
  }
}

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: gql(listPosts), fetchPolicy: FetchPolicy.networkOnly),
        builder: (QueryResult result,
            {Future<QueryResult?> Function()? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading');
          }

          List posts = result.data?['posts']['edges'] ?? [];
          return ListView.separated(
              padding: const EdgeInsets.all(12),
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1.5,
                  color: Colors.grey.shade300,
                );
              },
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index]['node'];
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
                            Expanded(
                                child: Text(
                              post['title'],
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          post['content'],
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
