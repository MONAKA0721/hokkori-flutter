import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/common/work.dart';
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
        padding: const EdgeInsets.only(top: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: 16,
              ),
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
