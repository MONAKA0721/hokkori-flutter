import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/pages/profile/profile_page.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarURL = ref.watch(userProvider).avatarURL;

    return Container(
        decoration: const BoxDecoration(
          color: backgroundColor,
        ),
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
        child: Row(
          children: [
            SizedBox(
                width: 50,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProfilePageNavigator()));
                    },
                    icon: avatarURL != ""
                        ? CircleAvatar(
                            maxRadius: 20,
                            backgroundImage: NetworkImage(avatarURL))
                        : const CircleAvatar(
                            maxRadius: 20,
                            backgroundImage:
                                AssetImage("assets/noimage.png")))),
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
