import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class TopPraises extends HookWidget {
  const TopPraises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = useQuery$TopPraises(Options$Query$TopPraises(
            variables: Variables$Query$TopPraises(first: 10)))
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
    final praises = result.parsedData?.topPraises ?? [];
    final chunkedPraises = [];
    const chunkSize = 2;
    var count = 0;

    do {
      chunkedPraises.add(praises.skip(count).take(chunkSize).toList());
      count += chunkSize;
    } while (count < praises.length);

    final children = <Widget>[];
    for (var i = 0; i < chunkedPraises.length; i++) {
      if (i != chunkedPraises.length - 1) {
        children.add(ColumnPraises(praises: chunkedPraises[i], index: i));
        children.add(const SizedBox(width: 20));
      } else {
        children.add(ColumnPraises(praises: chunkedPraises[i], index: i));
      }
    }

    return Row(
      children: children,
    );
  }
}

class ColumnPraises extends StatelessWidget {
  final List<Query$TopPraises$topPraises?> praises;
  final int index;
  const ColumnPraises({super.key, required this.praises, required this.index});

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < praises.length; i++) {
      if (i != praises.length - 1) {
        children.add(TopPraise(praise: praises[i], rank: 2 * index + i + 1));
        children.add(const SizedBox(width: 10));
      } else {
        children.add(TopPraise(praise: praises[i], rank: 2 * index + i + 1));
      }
    }
    return Column(children: children);
  }
}

class TopPraise extends StatelessWidget {
  final Query$TopPraises$topPraises? praise;
  final int rank;
  const TopPraise({super.key, required this.praise, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          rank.toString().padLeft(2, '0'),
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        const Icon(
          Icons.arrow_upward,
          size: 19,
          color: Color(0xffD15F60),
        )
      ]),
      const SizedBox(
        width: 7,
      ),
      Container(
        padding: const EdgeInsets.only(top: 4),
        width: 150,
        child:
            Text(praise!.title, overflow: TextOverflow.ellipsis, maxLines: 2),
      ),
    ]);
  }
}
