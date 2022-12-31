import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/praises.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class WorkPraises extends StatefulWidget {
  final String workID;
  final List<Query$Work$workCategories?>? workCategories;
  const WorkPraises(
      {Key? key, required this.workID, required this.workCategories})
      : super(key: key);

  @override
  State<WorkPraises> createState() => _WorkPraisesState();
}

class _WorkPraisesState extends State<WorkPraises> {
  String categoryID = "";
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    final allCount = widget.workCategories!.fold<int>(
        0, ((previousValue, element) => previousValue + element!.postCount));

    List<DropdownMenuItem<String>> _addDividersAfterItems() {
      List<DropdownMenuItem<String>> _menuItems = [];
      _menuItems.add(DropdownMenuItem<String>(
          value: "",
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "全て（$allCount件）",
              ))));
      _menuItems.add(const DropdownMenuItem<String>(
        enabled: false,
        child: Divider(
          color: blueButtonColor,
          thickness: 0.5,
        ),
      ));
      for (var workCategory in widget.workCategories!) {
        _menuItems.addAll(
          [
            DropdownMenuItem<String>(
              value: workCategory!.categoryID,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "${workCategory.categoryName}（${workCategory.postCount}件）",
                  )),
            ),
            if (workCategory != widget.workCategories!.last)
              const DropdownMenuItem<String>(
                enabled: false,
                child: Divider(
                  thickness: 0.5,
                  color: blueButtonColor,
                ),
              ),
          ],
        );
      }
      return _menuItems;
    }

    List<int> _getDividersIndexes() {
      List<int> _dividersIndexes = [];
      for (var i = 0; i < ((widget.workCategories!.length + 1) * 2) - 1; i++) {
        //Dividers indexes will be the odd indexes
        if (i.isOdd) {
          _dividersIndexes.add(i);
        }
      }
      return _dividersIndexes;
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('assets/praise.png'),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "カテゴリ別のほっこり",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 300,
            child: DropdownButton2(
              items: _addDividersAfterItems(),
              customItemsIndexes: _getDividersIndexes(),
              customItemsHeight: 1,
              value: categoryID,
              onChanged: (value) {
                setState(() => {categoryID = value as String});
              },
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: blueButtonColor, width: 1)),
                child: const Icon(
                  Icons.expand_more,
                  color: blueButtonColor,
                ),
              ),
              iconOnClick: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: blueButtonColor, width: 1)),
                child: const Icon(
                  Icons.expand_less,
                  color: blueButtonColor,
                ),
              ),
              buttonDecoration: BoxDecoration(
                  border: Border.all(color: blueButtonColor),
                  borderRadius: isOpen
                      ? const BorderRadius.vertical(top: Radius.circular(35))
                      : BorderRadius.circular(35),
                  color: const Color(0xffEDF2F7)),
              underline: Container(),
              isExpanded: true,
              buttonPadding: const EdgeInsets.only(
                right: 20,
              ),
              buttonHeight: 70,
              onMenuStateChange: (bool open) {
                setState(() {
                  isOpen = open;
                });
              },
              itemHeight: 70,
              itemPadding: const EdgeInsets.symmetric(horizontal: 0),
              dropdownDecoration: BoxDecoration(
                  border: Border.all(color: blueButtonColor),
                  color: const Color(0xffEDF2F7),
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(35))),
            )),
        Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
            child: Praises(hasHeading: false, first: 5, or: [
              Input$PostWhereInput(
                hasWorkWith: [
                  Input$WorkWhereInput(
                    id: widget.workID,
                  ),
                ],
                hasCategoryWith: categoryID == ""
                    ? []
                    : [
                        Input$CategoryWhereInput(
                          id: categoryID,
                        )
                      ],
              )
            ])),
      ],
    );
  }
}
