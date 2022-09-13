import 'package:flutter/material.dart';
import 'package:hokkori/pages/search/top_praises.dart';
import 'package:hokkori/pages/search/top_works.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/content_type.dart';

class TopicContents extends StatelessWidget {
  final ContentType type;
  const TopicContents({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final Widget contents;
    final String heading;
    switch (type) {
      case ContentType.praise:
        contents = const TopPraises();
        heading = "注目のほっこり";
        break;
      case ContentType.work:
        contents = const TopWorks();
        heading = "話題作品";
        break;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Icons.favorite_border,
              size: 30,
              color: primaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              heading,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: contents)))
      ],
    );
  }
}
