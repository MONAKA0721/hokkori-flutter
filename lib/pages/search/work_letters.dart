import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class WorkLetters extends StatelessWidget {
  final String workID;
  const WorkLetters({
    Key? key,
    required this.workID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/letter.png'),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "関連するレター",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: LikedLetters(
            first: 5,
            or: [
              Input$PostWhereInput(
                hasWorkWith: [
                  Input$WorkWhereInput(
                    id: workID,
                  ),
                ],
              )
            ],
          ))
    ]);
  }
}

class LikedLetters extends HookWidget {
  final int? first;
  final List<Input$PostWhereInput>? or;
  const LikedLetters({
    super.key,
    this.first,
    this.or,
  });

  @override
  Widget build(BuildContext context) {
    final result = useQuery$LikedLetters(Options$Query$LikedLetters(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$LikedLetters(
          first: first,
          or: or,
        ))).result;

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
    final letters = result.parsedData?.likedPosts.edges ?? [];
    final String? fetchMoreCursor =
        result.parsedData?.likedPosts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.likedPosts.pageInfo.hasNextPage;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ...letters
          .map((letter) => Letter(
              letter: letter!.node!,
              optimistic: result.source == QueryResultSource.optimisticResult))
          .toList(),
      hasNextPage!
          ? FetchMoreButton(first: first, or: or, after: fetchMoreCursor)
          : Container(),
    ]);
  }
}

class FetchMoreButton extends HookWidget {
  final int? first;
  final List<Input$PostWhereInput>? or;
  final String? after;

  const FetchMoreButton(
      {super.key, required this.first, required this.or, required this.after});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$LikedLetters(Options$Query$LikedLetters(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$LikedLetters(
                first: first, or: or, after: after)))
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
    final letters = result.parsedData?.likedPosts.edges ?? [];
    final fetchMoreCursor = result.parsedData?.likedPosts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.likedPosts.pageInfo.hasNextPage;

    return pushed.value
        ? Column(children: [
            ...letters
                .map((letter) => Letter(
                    letter: letter!.node!,
                    optimistic:
                        result.source == QueryResultSource.optimisticResult))
                .toList(),
            hasNextPage!
                ? FetchMoreButton(first: first, or: or, after: fetchMoreCursor)
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
