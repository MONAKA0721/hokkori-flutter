import 'package:flutter/material.dart';
import 'package:hokkori/pages/search/search_page.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchInput extends ConsumerWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(color: backgroundColor),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 0.1,
                blurRadius: 3,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: TextField(
            controller:
                TextEditingController(text: ref.watch(searchTextProvider)),
            onChanged: (value) {
              ref.watch(searchTextProvider.notifier).state = value;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: Colors.white),
              ),
              hintText: "ほっこりをさがす...",
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
