import 'package:flutter/material.dart';
import 'package:hokkori/utils/colors.dart';

class BlueButton extends StatelessWidget {
  final String title;
  final double? width;
  final void Function()? onPressed;
  const BlueButton(
      {super.key, required this.title, this.width, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: blueButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16)),
            onPressed: onPressed,
            child: Row(
              children: [
                const SizedBox(
                  width: 37,
                ),
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(
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
            )));
  }
}
