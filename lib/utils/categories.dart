import 'package:flutter/material.dart';
import 'package:hokkori/utils/colors.dart';

class Category {
  const Category(this.id, this.name, this.color);
  final int id;
  final String name;
  final Color color;
}

const masterCategories = <Category>[
  Category(1, 'アイデア', primaryColor),
  Category(2, 'サウンド', blueColor),
  Category(3, 'デザイン', yellowColor),
  Category(4, 'シナリオ', greenColor),
  Category(5, 'キャラクター', primaryColor),
  Category(6, 'レベルデザイン', primaryColor),
  Category(7, 'マーケティング', primaryColor),
  Category(8, 'コーディング', primaryColor),
  Category(9, '萌え要素', primaryColor),
];
