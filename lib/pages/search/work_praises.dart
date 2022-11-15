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
              items: [
                DropdownMenuItem<String>(
                    value: "",
                    child: Text(
                      "全て（$allCount件）",
                    )),
                ...widget.workCategories!
                    .map((workCategory) => DropdownMenuItem<String>(
                          value: workCategory!.categoryID,
                          child: Text(
                            "${workCategory.categoryName}（${workCategory.postCount}件）",
                          ),
                        ))
                    .toList()
              ],
              value: categoryID,
              onChanged: (value) {
                setState(() => {categoryID = value as String});
              },
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1)),
                child: const Icon(
                  Icons.expand_more,
                  color: Colors.white,
                ),
              ),
              iconOnClick: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1)),
                child: const Icon(
                  Icons.expand_less,
                  color: Colors.white,
                ),
              ),
              buttonDecoration: BoxDecoration(
                  borderRadius: isOpen
                      ? const BorderRadius.vertical(top: Radius.circular(35))
                      : BorderRadius.circular(35),
                  color: blueButtonColor),
              underline: Container(),
              isExpanded: true,
              buttonPadding: const EdgeInsets.only(right: 20, left: 30),
              buttonHeight: 70,
              onMenuStateChange: (bool open) {
                setState(() {
                  isOpen = open;
                });
              },
              itemHeight: 70,
              dropdownPadding: const EdgeInsets.only(left: 12),
              dropdownDecoration: const BoxDecoration(
                  color: Color(0xffEDF2F7),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(35))),
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
