import 'package:flutter/material.dart';
import 'package:hokkori/pages/search/search_page.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchInput extends ConsumerWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: const BoxDecoration(color: backgroundColor),
      child: SizedBox(
        child: TextField(
            onChanged: (value) {
              ref.watch(searchTextProvider.notifier).state = value;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
              ),
              hintText: "ほっこりをさがす",
              hintStyle: const TextStyle(color: headingColor),
              prefixIcon: const Icon(
                Icons.search,
                color: greyColor,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            )),
        height: 40,
      ),
    );
  }
}
