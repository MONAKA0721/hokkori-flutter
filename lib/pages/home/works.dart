import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/home/home_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class HomeWorks extends HookWidget {
  const HomeWorks({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$HomeWorks(Options$Query$HomeWorks(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$HomeWorks(first: 6)))
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

    return Padding(
        padding: const EdgeInsets.only(left: 16, top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('assets/work.png'),
              const SizedBox(
                width: 10,
              ),
              const Text(
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
  final Query$HomeWorks$works$edges$node work;

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  work.title,
                  style: const TextStyle(fontSize: 12, color: blueButtonColor),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: blueButtonColor,
                  size: 12,
                )
              ])),
    ]);
  }
}
