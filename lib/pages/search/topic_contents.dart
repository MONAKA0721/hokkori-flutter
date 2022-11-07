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
    final Widget icon;
    switch (type) {
      case ContentType.praise:
        contents = const TopPraises();
        heading = "注目のほっこり";
        icon = const Icon(
          Icons.favorite_border,
          size: 30,
          color: primaryColor,
        );
        break;
      case ContentType.work:
        contents = const TopWorks();
        heading = "話題作品";
        icon = Image.asset('assets/work.png');
        break;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              width: 20,
            ),
            icon,
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            scrollDirection: Axis.horizontal,
            child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 0.1,
                        blurRadius: 3,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: contents))
      ],
    );
  }
}
