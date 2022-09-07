import 'package:flutter/material.dart';
import 'package:hokkori/utils/colors.dart';

class HashTag extends StatelessWidget {
  final String name;

  const HashTag({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, bottom: 10),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: const Color(0xfff2f2f2),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        "#$name",
        style: const TextStyle(color: headingColor),
      ),
    );
  }
}
