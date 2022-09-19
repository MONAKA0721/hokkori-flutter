import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class Letter extends StatelessWidget {
  final Fragment$LetterSummary letter;
  const Letter({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, right: 5, left: 5),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.1,
                blurRadius: 5,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 15,
                  child: SvgPicture.asset('assets/palette.svg')),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  child: Text(
                letter.title,
                style: const TextStyle(fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          IntrinsicHeight(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                "https://www.ojamakan.com/wp/wp-content/uploads/2022/04/4129Q0P1GML._AC_.jpg",
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    letter.content,
                    style: const TextStyle(color: Colors.black87, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: Color(0xffa2a2a2),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        letter.owner.name,
                        style: const TextStyle(
                            color: Colors.black87,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.favorite,
                        color: primaryColor,
                        size: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "27",
                        style: TextStyle(color: Colors.black87, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ))
            ],
          ))
        ]));
  }
}
