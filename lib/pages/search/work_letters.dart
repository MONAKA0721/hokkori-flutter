import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';

class WorkLetters extends StatelessWidget {
  final String workID;
  const WorkLetters({
    Key? key,
    required this.workID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/letter.png'),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "関連するレター",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: Letters(
            hasHeading: false,
            first: 5,
            or: [
              Input$PostWhereInput(
                hasWorkWith: [
                  Input$WorkWhereInput(
                    id: workID,
                  ),
                ],
              )
            ],
          ))
    ]);
  }
}
