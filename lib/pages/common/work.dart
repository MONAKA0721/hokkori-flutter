import 'package:flutter/material.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/search/work_page.dart';
import 'package:hokkori/utils/colors.dart';

class Work extends StatelessWidget {
  const Work({super.key, required this.work, this.size});
  final Fragment$WorkSummary work;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final thumbnail = work.thumbnail!;
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed('/work', arguments: WorkPageArguments(work.id));
        },
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          thumbnail != ""
              ? Image.network(
                  thumbnail,
                  width: size,
                  height: size,
                )
              : Image.asset(
                  "assets/noimage.png",
                  width: size,
                  height: size,
                ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
              width: size,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Text(
                      work.title,
                      style:
                          const TextStyle(fontSize: 12, color: blueButtonColor),
                      overflow: TextOverflow.ellipsis,
                    )),
                    const Icon(
                      Icons.chevron_right,
                      color: blueButtonColor,
                      size: 12,
                    )
                  ])),
        ]));
  }
}
