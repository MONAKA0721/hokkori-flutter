import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/pages/common/praises.dart';
import 'package:hokkori/pages/search/category_header.dart';

class CategoryPageArguments {
  final String id;
  final String name;

  CategoryPageArguments(this.id, this.name);
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CategoryPageArguments;
    return Column(
      children: [
        CategoryHeader(name: args.name),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Praises(
                  first: 3,
                  hasCategoryWith: [Input$CategoryWhereInput(id: args.id)],
                ),
                const SizedBox(
                  height: 40,
                ),
                Letters(
                  first: 3,
                  hasCategoryWith: [Input$CategoryWhereInput(id: args.id)],
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
