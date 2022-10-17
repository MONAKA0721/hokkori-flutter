import 'package:flutter/material.dart';
import 'package:hokkori/pages/tutorial/indicator.dart';
import 'package:hokkori/utils/ages.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Tutorial2 extends ConsumerWidget {
  const Tutorial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool validate() {
      ref.watch(tutorialNameErrorProvider.notifier).state =
          ref.watch(tutorialNameProvider) == "";
      ref.watch(tutorialUsernameErrorProvider.notifier).state =
          ref.watch(tutorialUsernameProvider) == "";
      ref.watch(tutorialAgeIDErrorProvider.notifier).state =
          ref.watch(tutorialAgeIDProvider) == null;
      return !ref.watch(tutorialNameErrorProvider) &&
          !ref.watch(tutorialUsernameErrorProvider) &&
          !ref.watch(tutorialAgeIDErrorProvider);
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 500,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 30),
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
                  "あなたについて",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "ニックネーム",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "入力(クリエイターは活動名推奨)",
                              hintStyle: TextStyle(
                                  color: ref.watch(tutorialNameErrorProvider)
                                      ? redErrorColor
                                      : null)),
                          onChanged: (value) {
                            ref.watch(tutorialNameProvider.notifier).state =
                                value;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "アカウント名",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "@Abcd_1234",
                              hintStyle: TextStyle(
                                  color:
                                      ref.watch(tutorialUsernameErrorProvider)
                                          ? redErrorColor
                                          : null)),
                          onChanged: (value) {
                            ref.watch(tutorialUsernameProvider.notifier).state =
                                value;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "年代",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        DropdownButton(
                            hint: Text(
                              "年齢を選択",
                              style: TextStyle(
                                  color: ref.watch(tutorialAgeIDErrorProvider)
                                      ? redErrorColor
                                      : null),
                            ),
                            value: ref.watch(tutorialAgeIDProvider),
                            items: masterAges
                                .map((age) => DropdownMenuItem(
                                    value: age.id, child: Text(age.name)))
                                .toList(),
                            onChanged: (int? value) {
                              ref.watch(tutorialAgeIDProvider.notifier).state =
                                  value;
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "性別",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 0,
                                groupValue: ref.watch(tutorialGenderProvider),
                                onChanged: (int? value) {
                                  ref
                                      .watch(tutorialGenderProvider.notifier)
                                      .state = value;
                                }),
                            const Text("男"),
                            Radio(
                                value: 1,
                                groupValue: ref.watch(tutorialGenderProvider),
                                onChanged: (int? value) {
                                  ref
                                      .watch(tutorialGenderProvider.notifier)
                                      .state = value;
                                }),
                            const Text("女"),
                            Radio(
                                value: 2,
                                groupValue: ref.watch(tutorialGenderProvider),
                                onChanged: (int? value) {
                                  ref
                                      .watch(tutorialGenderProvider.notifier)
                                      .state = value;
                                }),
                            const Text("選択しない")
                          ],
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
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
                        onPressed: () {
                          if (!validate()) return;
                          Navigator.of(context).pushNamed('/3');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(width: 24),
                            Text(
                              "次へ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Icon(Icons.arrow_circle_right, color: Colors.white)
                          ],
                        ))),
              ]),
            ),
            const Indicator(nowNumber: 2)
          ],
        ),
      ),
    );
  }
}
