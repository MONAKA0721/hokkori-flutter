import 'package:flutter/material.dart';
import 'package:hokkori/utils/colors.dart';

class HashtagHeader extends StatelessWidget {
  final String title;
  const HashtagHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: backgroundColor),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Row(children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        const Icon(
          Icons.tag,
          size: 26,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(title)
      ]),
    );
  }
}
