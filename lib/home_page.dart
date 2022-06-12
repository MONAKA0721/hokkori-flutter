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
        owner {
          id
          name
        }
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
    return Column(children: const [
      Header(),
      Expanded(
          child: Scaffold(
        body: Posts(),
        backgroundColor: Color(0xffFCF5F5),
      ))
    ]);
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
            return const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            );
          }

          List posts = result.data?['posts']['edges'] ?? [];
          List hashTags = ["#あああああああああああ", "#あああ", "#あああ", "#あああああ"];

          return ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              separatorBuilder: (context, index) {
                return (index % 2 == 1)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            children:
                                hashTags.map((e) => HashTag(name: e)).toList(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    : const SizedBox(
                        height: 20,
                      );
              },
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Post(post: posts[index]['node']);
              });
        });
  }
}

class HashTag extends StatelessWidget {
  final String name;

  const HashTag({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, bottom: 10),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Text(name),
    );
  }
}

class Post extends StatelessWidget {
  final dynamic post;
  const Post({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(children: [
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
                style: const TextStyle(fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          IntrinsicHeight(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post['content'],
                    style: const TextStyle(color: Colors.black87, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: Color(0xffa2a2a2),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        post['owner']['name'],
                        style: const TextStyle(
                            color: Colors.black87,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.favorite,
                        color: primaryColor,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "27",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ))
            ],
          ))
        ]));
  }
}
