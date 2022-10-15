import 'package:flutter/material.dart';
import 'package:hokkori/pages/tutorial/indicator.dart';
import 'package:hokkori/utils/colors.dart';

class Tutorial1 extends StatelessWidget {
  const Tutorial1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 463,
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
                  "ほっこりへようこそ！",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "あなたの投稿で傷つく人が\nいないように心がけましょう。",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          Image.asset(
                            "assets/sympathy.png",
                            height: 100,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "共感があふれる\n世界に",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ]),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(children: [
                          Image.asset(
                            "assets/heartwarming.png",
                            height: 100,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "心温まる言葉を\nかけよう",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ])
                      ],
                    )),
                const SizedBox(
                  height: 50,
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
                          Navigator.of(context).pushNamed('/2');
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
            const Indicator(nowNumber: 1)
          ],
        ),
      ),
    );
  }
}
