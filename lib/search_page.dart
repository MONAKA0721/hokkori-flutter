import 'package:flutter/material.dart';
import 'package:hokkori/utils/content_type.dart';
import 'package:hokkori/utils/header.dart';

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
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<Widget>(builder: builder, settings: settings);
      },
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(),
        const SearchInput(),
        Expanded(
            child: Scaffold(
                body: SingleChildScrollView(
                    child: Column(
          children: const [
            TopicWorks(),
            Divider(
              thickness: 1,
            ),
            TopicContents(type: ContentType.letter),
            Divider(
              thickness: 1,
            ),
            TopicContents(type: ContentType.hokkori)
          ],
        ))))
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TopicWorks extends StatelessWidget {
  const TopicWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "話題作品",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: const [TopicWork(), TopicWork(), TopicWork()],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [TopicWork(), TopicWork(), TopicWork()],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [TopicWork(), TopicWork(), TopicWork()],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const TopicWork(),
                  ],
                ))
          ],
        ));
  }
}

class TopicWork extends StatelessWidget {
  const TopicWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          "00",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        Icon(
          Icons.arrow_upward,
          size: 19,
        )
      ]),
      const SizedBox(
        width: 10,
      ),
      Container(
        padding: const EdgeInsets.only(top: 4),
        width: 150,
        child: const Text("#ああああああああああああああああ",
            overflow: TextOverflow.ellipsis, maxLines: 2),
      )
    ]);
  }
}

class TopicContent extends StatelessWidget {
  const TopicContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.network(
        "https://source.unsplash.com/random/100x100",
        width: 45,
        height: 45,
      ),
      const SizedBox(
        width: 7,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          "00",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        Icon(
          Icons.arrow_upward,
          size: 19,
        )
      ]),
      const SizedBox(
        width: 7,
      ),
      Container(
        padding: const EdgeInsets.only(top: 4),
        width: 150,
        child: const Text("#ああああああああああああああああ",
            overflow: TextOverflow.ellipsis, maxLines: 2),
      ),
    ]);
  }
}

class TopicContents extends StatelessWidget {
  final ContentType type;
  const TopicContents({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "注目の$type",
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: const [
                        TopicContent(),
                        SizedBox(
                          height: 10,
                        ),
                        TopicContent(),
                        SizedBox(
                          height: 10,
                        ),
                        TopicContent(),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        TopicContent(),
                        SizedBox(
                          height: 10,
                        ),
                        TopicContent(),
                        SizedBox(
                          height: 10,
                        ),
                        TopicContent(),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        TopicContent(),
                        SizedBox(
                          height: 10,
                        ),
                        TopicContent(),
                        SizedBox(
                          height: 10,
                        ),
                        TopicContent(),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const TopicContent(),
                  ],
                ))
          ],
        ));
  }
}
