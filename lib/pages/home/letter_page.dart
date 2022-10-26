import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LetterPage extends ConsumerStatefulWidget {
  const LetterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<LetterPage> createState() => _LetterPageState();
}

class _LetterPageState extends ConsumerState<LetterPage> {
  int _selectedTypeIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget buttons;
    Widget items;

    switch (_selectedTypeIndex) {
      case 0:
        items = const Letters(
          first: 10,
          hasHeading: false,
        );
        buttons = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor,
                      border: Border.all(color: primaryColor, width: 1)),
                ),
                TextButton(
                  child: const Text(
                    "すべて",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedTypeIndex = 0;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 9,
                  height: 9,
                ),
                TextButton(
                  child: const Text(
                    "フォロー中",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedTypeIndex = 1;
                    });
                  },
                ),
              ],
            ),
          ],
        );
        break;
      case 1:
        items = Letters(
          hasHeading: false,
          or: [
            Input$PostWhereInput(hasOwnerWith: [
              Input$UserWhereInput(hasFollowersWith: [
                Input$UserWhereInput(id: ref.watch(userProvider).id)
              ])
            ])
          ],
        );
        buttons = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 9,
                  height: 9,
                ),
                TextButton(
                  child: const Text(
                    "すべて",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedTypeIndex = 0;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor,
                      border: Border.all(color: primaryColor, width: 1)),
                ),
                TextButton(
                  child: const Text(
                    "フォロー中",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedTypeIndex = 1;
                    });
                  },
                ),
              ],
            ),
          ],
        );
        break;
      default:
        items = Container();
        buttons = Container();
        break;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(
              context,
            ).pop();
          },
        ),
        title: SvgPicture.asset(
          'assets/logo.svg',
          color: primaryColor,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        buttons,
        Padding(
            padding: const EdgeInsets.only(left: 16, right: 16), child: items),
        const SizedBox(
          height: 20,
        )
      ])),
    );
  }
}
