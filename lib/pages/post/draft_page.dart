import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/utils/colors.dart';

class Draft {}

class DraftPageArguments {
  final List<Draft> drafts;

  DraftPageArguments(this.drafts);
}

class DraftPage extends StatelessWidget {
  const DraftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(children: [
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: blueButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16)),
              onPressed: () {},
              child: Row(
                children: [
                  const SizedBox(
                    width: 37,
                  ),
                  const Spacer(),
                  const Text(
                    "新しく作成する",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 1)),
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                        size: 20,
                      )),
                  const SizedBox(
                    width: 15,
                  )
                ],
              )),
          SizedBox(
              height: 400,
              child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.separated(
                      itemCount: 2,
                      itemBuilder: (context, index) => index == 0
                          ? const Text(
                              "書きかけの投稿",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "作品名:",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "カテゴリ:",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "ほっこり見出し",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                      separatorBuilder: (context, index) => const Divider(
                            color: Colors.black12,
                            thickness: 1,
                          )))),
        ]),
      ),
      const SizedBox(
        height: 10,
      ),
      IconButton(
        iconSize: 80,
        icon: SvgPicture.asset('assets/close.svg', width: 80),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      const Text(
        "閉じる",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )
    ]);
  }
}
