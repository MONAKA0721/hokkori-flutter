import 'package:flutter/material.dart';
import 'package:hokkori/pages/tutorial/indicator.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/interests.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Tutorial5 extends ConsumerStatefulWidget {
  final Function loginAction;
  const Tutorial5({Key? key, required this.loginAction}) : super(key: key);

  @override
  ConsumerState<Tutorial5> createState() => _Tutorial5State();
}

class _Tutorial5State extends ConsumerState<Tutorial5> {
  final checkedList = List.filled(masterInterests.length, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 610,
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.1,
                    blurRadius: 5,
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                const Text(
                  "最後にあなたの好きな項目を\n3つ以上教えてください",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  width: 350,
                  height: 20,
                ),
                Container(
                    width: 310,
                    decoration: const BoxDecoration(color: checkboxBlueColor),
                    child: Wrap(
                      children: checkedList
                          .asMap()
                          .entries
                          .map((entry) =>
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                SizedBox(
                                    width: 30,
                                    height: 48,
                                    child: Checkbox(
                                        value: checkedList[entry.key],
                                        onChanged: (bool? e) => {
                                              setState(() {
                                                checkedList[entry.key] = e!;
                                              })
                                            })),
                                Text(
                                  masterInterests[entry.key].name,
                                )
                              ]))
                          .toList(),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "あなたの投稿が\n誰かのほっこりになりますように。",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 280,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          backgroundColor: blueButtonColor,
                          side: const BorderSide(
                              color: blueButtonColor, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () async {
                          List<int> interests = [];
                          checkedList
                              .asMap()
                              .forEach((int index, bool checked) {
                            if (checked) {
                              interests.add(index + 1);
                            }
                          });
                          ref.watch(tutorialInterestsProvider.notifier).state =
                              interests;
                          await widget.loginAction();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(width: 24),
                            Text(
                              "ほっこりする",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Icon(Icons.arrow_circle_right, color: Colors.white)
                          ],
                        ))),
              ]),
            ),
            const Indicator(nowNumber: 5)
          ],
        ),
      ),
    );
  }
}
