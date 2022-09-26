import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/pages/common/praise.dart';
import 'package:hokkori/pages/home/home_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class HomePraises extends HookWidget {
  const HomePraises({super.key});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$HomePraises(Options$Query$HomePraises(
            fetchPolicy: FetchPolicy.networkOnly,
            variables: Variables$Query$HomePraises(first: 3)))
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

    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
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
                "ほっこり",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ],
          ),
          ...praises.map((praise) => Praise(praise: praise!.node!)).toList(),
          FetchMoreButton(
            cursor: fetchMoreCursor,
          )
        ]));
  }
}

class FetchMoreButton extends HookWidget {
  final String? cursor;
  const FetchMoreButton({super.key, required this.cursor});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$HomePraises(Options$Query$HomePraises(
            variables: Variables$Query$HomePraises(first: 3, after: cursor)))
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
