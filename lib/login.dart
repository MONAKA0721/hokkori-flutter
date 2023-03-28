import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/utils/colors.dart';

class Login extends StatelessWidget {
  final Function loginAction;
  final String loginError;

  const Login({super.key, required this.loginAction, required this.loginError});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/logo.svg',
                  color: primaryColor,
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("すべてのクリエイターにありがとうを",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 16,
                    )),
                const SizedBox(
                  height: 60,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
                      backgroundColor: blueButtonColor,
                      side: const BorderSide(color: blueButtonColor, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      loginAction();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 24),
                        const Text(
                          "ログイン",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: const Icon(Icons.chevron_right,
                                color: Colors.white))
                      ],
                    )),
              ],
            )));
  }
}
