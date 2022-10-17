import 'package:flutter/material.dart';
import 'package:hokkori/utils/colors.dart';

class Indicator extends StatelessWidget {
  final int nowNumber;
  const Indicator({Key? key, required this.nowNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [1, 2, 3, 4, 5];
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers
            .map((number) => Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: number == nowNumber
                          ? primaryColor
                          : Colors.transparent,
                      border: Border.all(color: primaryColor, width: 1)),
                ))
            .toList());
  }
}
