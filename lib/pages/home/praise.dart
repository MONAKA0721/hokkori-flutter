import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/pages/home/hashtag.dart';
import 'package:hokkori/pages/home/home_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class Praise extends StatelessWidget {
  final Query$TopPraises$posts$edges$node praise;
  const Praise({super.key, required this.praise});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.1,
                blurRadius: 0.1,
                offset: const Offset(0, 0.1), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                praise.title,
                style: const TextStyle(fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            praise.content,
            style: const TextStyle(color: Colors.black87, fontSize: 12),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            children: praise.hashtags!
                .map((hashtag) => HashTag(name: hashtag.title))
                .toList(),
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
                praise.owner.name,
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
                width: 50,
              ),
            ],
          )
        ]));
  }
}
