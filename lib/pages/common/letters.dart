import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/utils/colors.dart';

class Letters extends HookWidget {
  final int? first;
  final List<Input$PostWhereInput>? or;
  final List<Input$CategoryWhereInput>? hasCategoryWith;
  const Letters({super.key, this.first, this.or, this.hasCategoryWith});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$Letters(Options$Query$Letters(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$Letters(
                first: first, or: or, hasCategoryWith: hasCategoryWith)))
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
    final letters = result.parsedData?.posts.edges ?? [];
    final String? fetchMoreCursor = result.parsedData?.posts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.posts.pageInfo.hasNextPage;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            "レター",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ],
      ),
      ...letters.map((letter) => Letter(letter: letter!.node!)).toList(),
      hasNextPage!
          ? FetchMoreButton(
              first: first,
              or: or,
              hasCategoryWith: hasCategoryWith,
              after: fetchMoreCursor)
          : Container(),
    ]);
  }
}

class FetchMoreButton extends HookWidget {
  final int? first;
  final List<Input$PostWhereInput>? or;
  final List<Input$CategoryWhereInput>? hasCategoryWith;
  final String? after;

  const FetchMoreButton(
      {super.key,
      required this.first,
      required this.or,
      required this.hasCategoryWith,
      required this.after});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$Letters(Options$Query$Letters(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$Letters(
                first: first,
                or: or,
                hasCategoryWith: hasCategoryWith,
                after: after)))
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
    final letters = result.parsedData?.posts.edges ?? [];
    final fetchMoreCursor = result.parsedData?.posts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.posts.pageInfo.hasNextPage;

    return pushed.value
        ? Column(children: [
            ...letters.map((letter) => Letter(letter: letter!.node!)).toList(),
            hasNextPage!
                ? FetchMoreButton(
                    first: first,
                    or: or,
                    hasCategoryWith: hasCategoryWith,
                    after: fetchMoreCursor)
                : Container()
          ])
        : Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  width: 280,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20),
                        backgroundColor: blueButtonColor,
                        side:
                            const BorderSide(color: blueButtonColor, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        pushed.value = true;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(width: 24),
                          Text(
                            "もっと見る",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(Icons.expand_circle_down, color: Colors.white)
                        ],
                      )))
            ])
          ]);
  }
}
