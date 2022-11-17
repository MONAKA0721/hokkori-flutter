import 'package:flutter/material.dart';

class Category {
  const Category(this.id, this.name, this.color, this.asset);
  final int id;
  final String name;
  final Color color;
  final String asset;
}

const masterCategories = <Category>[
  Category(1, 'アイデア', Color(0xffE6A16D), 'idea'),
  Category(2, 'サウンド', Color(0xffC6D87A), 'sound'),
  Category(3, 'デザイン', Color(0xffEB9A9A), 'design'),
  Category(4, 'シナリオ', Color(0xff80D1B5), 'scenario'),
  Category(5, 'キャラクター', Color(0xffED8181), 'character'),
  Category(6, 'レベルデザイン', Color(0xffBBA4D0), 'level'),
  Category(7, 'マーケティング', Color(0xff8DDDE0), 'marketing'),
  Category(8, 'コーディング', Color(0xff8DB0E0), 'coding'),
];
