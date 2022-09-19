import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokkori/pages/common/letter.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

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
            child: SingleChildScrollView(
                child: Column(
              children: [
                CategoryLetters(
                  categoryID: args.id,
                )
              ],
            )),
          ),
        )
      ],
    );
  }
}

class CategoryHeader extends StatelessWidget {
  final String name;
  const CategoryHeader({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
      child: Row(children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        CircleAvatar(
          child: SvgPicture.asset('assets/palette.svg'),
          radius: 13,
          backgroundColor: primaryColor,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name)
      ]),
    );
  }
}

class CategoryLetters extends HookWidget {
  final String categoryID;
  const CategoryLetters({super.key, required this.categoryID});

  @override
  Widget build(BuildContext context) {
    final result = useQuery$CategoryLetters(Options$Query$CategoryLetters(
            variables: Variables$Query$CategoryLetters(
                categoryID: categoryID, first: 3)))
        .result;

    if (result.hasException) {
      return Text(result.exception.toString());
    }
    if (result.isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      );
    }
    final letters = result.parsedData?.posts.edges ?? [];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "レター",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ...letters.map((letter) => Letter(letter: letter!.node!)).toList(),
      const SizedBox(
        height: 30,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              backgroundColor: blueHomeColor,
              side: const BorderSide(color: blueHomeColor, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: Row(
              children: const [
                Text(
                  "もっと見る",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.chevron_right, color: Colors.white)
              ],
            ))
      ])
    ]);
  }
}
