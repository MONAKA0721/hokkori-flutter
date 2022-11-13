import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class TopWorks extends HookWidget {
  const TopWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = useQuery$TopicWorks(Options$Query$TopicWorks(
            variables: Variables$Query$TopicWorks(first: 10)))
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
    final works = result.parsedData?.topicWorks ?? [];
    final chunkedWorks = [];
    const chunkSize = 2;
    var count = 0;

    do {
      chunkedWorks.add(works.skip(count).take(chunkSize).toList());
      count += chunkSize;
    } while (count < works.length);

    final children = <Widget>[];
    for (var i = 0; i < chunkedWorks.length; i++) {
      if (i != chunkedWorks.length - 1) {
        children.add(ColumnWorks(works: chunkedWorks[i], index: i));
        children.add(const SizedBox(width: 20));
      } else {
        children.add(ColumnWorks(works: chunkedWorks[i], index: i));
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}

class ColumnWorks extends StatelessWidget {
  final List<Query$TopicWorks$topicWorks?> works;
  final int index;
  const ColumnWorks({super.key, required this.works, required this.index});

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < works.length; i++) {
      if (i != works.length - 1) {
        children.add(TopWork(work: works[i], rank: 2 * index + i + 1));
        children.add(const SizedBox(
          height: 10,
        ));
      } else {
        children.add(TopWork(work: works[i], rank: 2 * index + i + 1));
      }
    }
    return Column(children: children);
  }
}

class TopWork extends StatelessWidget {
  final Query$TopicWorks$topicWorks? work;
  final int rank;
  const TopWork({super.key, required this.work, required this.rank});

  @override
  Widget build(BuildContext context) {
    final thumbnail = work!.thumbnail!;
    const width = 45.0;
    const height = 45.0;

    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          rank.toString().padLeft(2, '0'),
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
      ]),
      const SizedBox(
        width: 7,
      ),
      thumbnail != ""
          ? Image.network(
              thumbnail,
              width: width,
              height: height,
            )
          : Image.asset(
              "assets/noimage.png",
              width: width,
              height: height,
            ),
      const SizedBox(
        width: 2,
      ),
      Container(
        padding: const EdgeInsets.only(top: 4),
        width: 150,
        child: Text(work!.title, overflow: TextOverflow.ellipsis, maxLines: 2),
      ),
    ]);
  }
}
