import 'package:flutter/material.dart';

class CategoryPageArguments {
  final String id;

  CategoryPageArguments(this.id);
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CategoryPageArguments;
    return Container();
  }
}
