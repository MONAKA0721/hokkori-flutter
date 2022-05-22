import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/utils/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: primaryColor,
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i1.wp.com/hanenews.com/wp-content/uploads/2018/12/b34ea738486a9ced02c5bc7152595187.jpg?fit=265%2C335&ssl=1")),
            const Spacer(),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset('assets/logo.svg'),
            const Spacer(),
            IconButton(
                icon: SvgPicture.asset('assets/bell.svg'), onPressed: () {}),
          ],
        ));
  }
}
