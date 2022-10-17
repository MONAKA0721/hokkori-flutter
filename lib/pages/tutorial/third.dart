import 'package:flutter/material.dart';
import 'package:hokkori/pages/tutorial/indicator.dart';
import 'package:hokkori/utils/colors.dart';

class Tutorial3 extends StatelessWidget {
  const Tutorial3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 500,
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
                  "2種類の投稿ができます",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  width: 350,
                  height: 20,
                ),
                SizedBox(
                  width: 320,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: cyanColor,
                              )),
                          const SizedBox(
                            width: 30,
                            height: 30,
                            child: Text(
                              "1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "ほっこり",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blueButtonColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "150文字以内で気軽に気持ちを\n投稿しましょう",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/tutorial3.png",
                  height: 200,
                ),
                const SizedBox(
                  height: 30,
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
                          Navigator.of(context).pushNamed('/4');
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
            const Indicator(nowNumber: 3)
          ],
        ),
      ),
    );
  }
}
