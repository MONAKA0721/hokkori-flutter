import 'package:flutter/material.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class Work extends StatelessWidget {
  const Work({super.key, required this.work});
  final Fragment$WorkSummary work;

  @override
  Widget build(BuildContext context) {
    const width = 125.0;
    final thumbnail = work.thumbnail!;
    return Column(mainAxisSize: MainAxisSize.min, children: [
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  work.title,
                  style: const TextStyle(fontSize: 12, color: blueButtonColor),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: blueButtonColor,
                  size: 12,
                )
              ])),
    ]);
  }
}
