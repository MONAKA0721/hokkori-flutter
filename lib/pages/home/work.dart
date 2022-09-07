import 'package:flutter/material.dart';
import 'package:hokkori/pages/home/home_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class Work extends StatelessWidget {
  const Work({super.key, required this.work});
  final Query$TopWorks$works$edges$node work;

  @override
  Widget build(BuildContext context) {
    const width = 125.0;
    final thumbnail = work.thumbnail!;
    return Column(children: [
      thumbnail != "null"
          ? Image.network(thumbnail, width: width)
          : Image.asset(
              "assets/noimage.png",
              width: width,
            ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
          width: width,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '★${work.title}',
                  style: const TextStyle(fontSize: 12, color: blueHomeColor),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: blueHomeColor,
                  size: 12,
                )
              ])),
    ]);
  }
}
