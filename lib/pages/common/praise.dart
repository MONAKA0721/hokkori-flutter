import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/home/hashtag.dart';
import 'package:hokkori/utils/colors.dart';

class Praise extends StatelessWidget {
  final Fragment$PraiseSummary praise;
  const Praise({super.key, required this.praise});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, right: 5, left: 5),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 0.1,
                blurRadius: 5,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 14,
                  child: SvgPicture.asset(
                    'assets/palette.svg',
                    width: 18,
                  )),
              const SizedBox(
                width: 10,
              ),
              Text(praise.category.name),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            praise.title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            praise.content,
            style: const TextStyle(color: Colors.black87, fontSize: 14),
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
              praise.owner.avatarURL != ""
                  ? CircleAvatar(
                      maxRadius: 12,
                      backgroundImage: NetworkImage(praise.owner.avatarURL!))
                  : const CircleAvatar(
                      maxRadius: 12,
                      backgroundImage: AssetImage("assets/noimage.png")),
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
                color: redErrorColor,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "27",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              const SizedBox(
                width: 30,
              ),
              const Icon(
                Icons.bookmark,
                color: greenAccentColor,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "27",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              const SizedBox(
                width: 40,
              ),
            ],
          )
        ]));
  }
}
