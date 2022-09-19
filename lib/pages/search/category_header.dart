import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/utils/colors.dart';

class CategoryHeader extends StatelessWidget {
  final String name;
  const CategoryHeader({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
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
          child: SvgPicture.asset('assets/palette.svg'),
          radius: 13,
          backgroundColor: primaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name)
      ]),
    );
  }
}
