import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/utils/colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: backgroundColor,
        ),
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
        child: Row(
          children: [
            const SizedBox(
              width: 50,
              child: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: NetworkImage(
                      "https://i1.wp.com/hanenews.com/wp-content/uploads/2018/12/b34ea738486a9ced02c5bc7152595187.jpg?fit=265%2C335&ssl=1")),
            ),
            const Spacer(),
            SvgPicture.asset(
              'assets/logo.svg',
              color: primaryColor,
            ),
            const Spacer(),
            SizedBox(
              width: 50,
              child: IconButton(
                  icon: SvgPicture.asset('assets/bell.svg'), onPressed: () {}),
            )
          ],
        ));
  }
}
