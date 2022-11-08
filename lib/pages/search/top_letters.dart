import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class TopLetters extends HookWidget {
  const TopLetters({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$LikedLetters(Options$Query$LikedLetters(
            variables: Variables$Query$LikedLetters(first: 5)))
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
    final letters = result.parsedData?.likedPosts ?? [];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset('assets/letter.png'),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "注目のレター",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      ...letters
          .map((letter) => Letter(
              letter: letter!,
              optimistic: result.source == QueryResultSource.optimisticResult))
          .toList(),
    ]);
  }
}
