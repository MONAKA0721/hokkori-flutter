import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/pages/common/praises.dart';
import 'package:hokkori/pages/search/category_header.dart';
import 'package:hokkori/utils/categories.dart';
import 'package:hokkori/utils/colors.dart';

class CategoryPageArguments {
  final Category category;

  CategoryPageArguments(this.category);
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CategoryPageArguments;
    return Column(
      children: [
        CategoryHeader(category: args.category),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
            decoration: const BoxDecoration(color: backgroundColor),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Praises(
                  first: 3,
                  hasCategoryWith: [
                    Input$CategoryWhereInput(id: args.category.id.toString())
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Letters(
                  first: 3,
                  hasCategoryWith: [
                    Input$CategoryWhereInput(id: args.category.id.toString())
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
          ),
        )
      ],
    );
  }
}
