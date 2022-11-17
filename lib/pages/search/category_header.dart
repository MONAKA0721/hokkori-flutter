import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/utils/categories.dart';
import 'package:hokkori/utils/colors.dart';

class CategoryHeader extends StatelessWidget {
  final Category category;
  const CategoryHeader({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: backgroundColor),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
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
        CircleAvatar(
          child: SvgPicture.asset(
            'assets/category_${category.asset}.svg',
            width: 18,
          ),
          radius: 14,
          backgroundColor: category.color,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(category.name)
      ]),
    );
  }
}
