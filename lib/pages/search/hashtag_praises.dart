import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hokkori/pages/common/praise.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class HashtagPraises extends HookWidget {
  final String hashtagID;
  final String hashtagTitle;
  const HashtagPraises(
      {super.key, required this.hashtagID, required this.hashtagTitle});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$HashtagPraises(Options$Query$HashtagPraises(
            variables: Variables$Query$HashtagPraises(
                first: 3, hashtagID: hashtagID, searchText: hashtagTitle)))
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
    final praises = result.parsedData?.posts.edges ?? [];
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
            "ほっこり",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ],
      ),
      ...praises.map((praise) => Praise(praise: praise!.node!)).toList(),
      hasNextPage!
          ? FetchMoreButton(
              hashtagID: hashtagID,
              cursor: fetchMoreCursor,
              hashtagTitle: hashtagTitle,
            )
          : Container()
    ]);
  }
}

class FetchMoreButton extends HookWidget {
  final String? cursor;
  final String hashtagID;
  final String hashtagTitle;

  const FetchMoreButton(
      {super.key,
      required this.cursor,
      required this.hashtagID,
      required this.hashtagTitle});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$HashtagPraises(Options$Query$HashtagPraises(
            variables: Variables$Query$HashtagPraises(
                first: 3,
                after: cursor,
                hashtagID: hashtagID,
                searchText: hashtagTitle)))
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
    final praises = result.parsedData?.posts.edges ?? [];
    final fetchMoreCursor = result.parsedData?.posts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.posts.pageInfo.hasNextPage;

    return pushed.value
        ? Column(children: [
            ...praises.map((praise) => Praise(praise: praise!.node!)).toList(),
            hasNextPage!
                ? FetchMoreButton(
                    cursor: fetchMoreCursor,
                    hashtagID: hashtagID,
                    hashtagTitle: hashtagTitle)
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
                        backgroundColor: blueHomeColor,
                        side: const BorderSide(color: blueHomeColor, width: 2),
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
