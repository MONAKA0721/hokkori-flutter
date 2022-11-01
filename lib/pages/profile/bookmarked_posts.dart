import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/pages/common/praise.dart';
import 'package:hokkori/pages/profile/profile_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class BookmarkedPosts extends HookWidget {
  const BookmarkedPosts({Key? key, required this.userID}) : super(key: key);
  final first = 10;
  final String userID;

  @override
  Widget build(BuildContext context) {
    final result = useQuery$BookmarkedPosts(Options$Query$BookmarkedPosts(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$BookmarkedPosts(
          first: first,
          userID: userID,
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
    final posts = result.parsedData?.posts.edges ?? [];
    final String? fetchMoreCursor = result.parsedData?.posts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.posts.pageInfo.hasNextPage;

    return Column(
      children: [
        ...posts
            .map((post) => post!.node!.type == Enum$PostPostType.praise
                ? Praise(
                    praise: post.node as Fragment$PraiseSummary,
                    optimistic:
                        result.source == QueryResultSource.optimisticResult)
                : Letter(
                    letter: post.node as Fragment$LetterSummary,
                    optimistic:
                        result.source == QueryResultSource.optimisticResult))
            .toList(),
        hasNextPage!
            ? FetchMoreButton(
                first: first,
                after: fetchMoreCursor,
                userID: userID,
              )
            : Container()
      ],
    );
  }
}

class FetchMoreButton extends HookWidget {
  final int first;
  final String? after;
  final String userID;
  const FetchMoreButton(
      {super.key,
      required this.first,
      required this.after,
      required this.userID});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$BookmarkedPosts(Options$Query$BookmarkedPosts(
            variables: Variables$Query$BookmarkedPosts(
                first: first, after: after, userID: userID)))
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
    final posts = result.parsedData?.posts.edges ?? [];
    final fetchMoreCursor = result.parsedData?.posts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.posts.pageInfo.hasNextPage;

    return pushed.value
        ? Column(children: [
            ...posts
                .map((post) => post!.node!.type == Enum$PostPostType.praise
                    ? Praise(
                        praise: post.node as Fragment$PraiseSummary,
                        optimistic:
                            result.source == QueryResultSource.optimisticResult)
                    : Letter(
                        letter: post.node as Fragment$LetterSummary,
                        optimistic: result.source ==
                            QueryResultSource.optimisticResult))
                .toList(),
            hasNextPage!
                ? FetchMoreButton(
                    first: first,
                    after: fetchMoreCursor,
                    userID: userID,
                  )
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
