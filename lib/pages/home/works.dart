import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/home/home_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class HomeWorks extends HookWidget {
  const HomeWorks({super.key});

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

    return Container(
        decoration: const BoxDecoration(color: Color(0xffF8F7F7)),
        padding: const EdgeInsets.only(left: 16, top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                "おすすめ作品",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ],
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
                itemBuilder: (context, index) =>
                    Work(work: works[index]!.node!),
                itemCount: works.length,
              ))
        ]));
  }
}

class Work extends StatelessWidget {
  const Work({super.key, required this.work});
  final Query$TopWorks$works$edges$node work;

  @override
  Widget build(BuildContext context) {
    const width = 125.0;
    final thumbnail = work.thumbnail!;
    return Column(children: [
      thumbnail != "null"
          ? Image.network(thumbnail, width: width)
          : Image.asset(
              "assets/noimage.png",
              width: width,
            ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
          width: width,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '★${work.title}',
                  style: const TextStyle(fontSize: 12, color: blueHomeColor),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: blueHomeColor,
                  size: 12,
                )
              ])),
    ]);
  }
}
