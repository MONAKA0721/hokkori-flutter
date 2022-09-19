import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class CategoryLetters extends HookWidget {
  final String categoryID;
  const CategoryLetters({super.key, required this.categoryID});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$CategoryLetters(Options$Query$CategoryLetters(
            variables: Variables$Query$CategoryLetters(
                categoryID: categoryID, first: 3)))
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
      FetchMoreButton(
        cursor: fetchMoreCursor,
        categoryID: categoryID,
      ),
    ]);
  }
}

class FetchMoreButton extends HookWidget {
  final String? cursor;
  final String categoryID;
  const FetchMoreButton(
      {super.key, required this.cursor, required this.categoryID});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$CategoryLetters(Options$Query$CategoryLetters(
            variables: Variables$Query$CategoryLetters(
                first: 3, after: cursor, categoryID: categoryID)))
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
                    cursor: fetchMoreCursor,
                    categoryID: categoryID,
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
