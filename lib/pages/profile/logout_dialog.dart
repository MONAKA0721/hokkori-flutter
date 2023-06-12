import 'package:flutter/material.dart';
import 'package:hokkori/main.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogoutDialog extends ConsumerWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        title: const Text(
          "ほっこりから\nログアウトしますか？",
          textAlign: TextAlign.center,
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: 100,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
                      backgroundColor: const Color(0xffF3F2F2),
                      side:
                          const BorderSide(color: Color(0xffF3F2F2), width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "いいえ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ))),
            SizedBox(
                width: 100,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
                      backgroundColor: blueButtonColor,
                      side: const BorderSide(color: blueButtonColor, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () async {
                      ref.watch(isBusyProvider.notifier).state = true;
                      Navigator.of(context, rootNavigator: true)
                          .popUntil((route) => route.isFirst);
                      await secureStorage.delete(key: 'refresh_token');
                      ref.watch(isLoggedInProvider.notifier).state = false;
                      ref.watch(isBusyProvider.notifier).state = false;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "はい",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ))),
          ],
        ));
  }
}
