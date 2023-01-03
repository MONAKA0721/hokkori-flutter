import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/praise.dart';
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
        0, ((previousValue, element) => previousValue + element!.count));

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
              value: workCategory!.id,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "${workCategory.name}（${workCategory.count}件）",
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
            child: LikedPraises(first: 5, or: [
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

class LikedPraises extends HookWidget {
  final int? first;
  final List<Input$PostWhereInput>? or;
  final String? after;
  const LikedPraises({
    super.key,
    this.first,
    this.or,
    this.after,
  });

  @override
  Widget build(BuildContext context) {
    final result = useQuery$LikedPraises(Options$Query$LikedPraises(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$LikedPraises(
          after: after,
          first: first,
          or: or,
        ))).result;

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
    final praises = result.parsedData?.likedPosts.edges ?? [];
    final String? fetchMoreCursor =
        result.parsedData?.likedPosts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.likedPosts.pageInfo.hasNextPage;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ...praises
          .map((praise) => Praise(
              praise: praise!.node!,
              optimistic: result.source == QueryResultSource.optimisticResult))
          .toList(),
      hasNextPage!
          ? FetchMoreButton(first: first, or: or, after: fetchMoreCursor)
          : Container()
    ]);
  }
}

class FetchMoreButton extends HookWidget {
  final int? first;
  final List<Input$PostWhereInput>? or;
  final String? after;
  const FetchMoreButton(
      {super.key, required this.first, required this.or, required this.after});

  @override
  Widget build(BuildContext context) {
    final pushed = useState(false);
    final result = useQuery$LikedPraises(Options$Query$LikedPraises(
            variables: Variables$Query$LikedPraises(
                first: first, or: or, after: after)))
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
    final praises = result.parsedData?.likedPosts.edges ?? [];
    final fetchMoreCursor = result.parsedData?.likedPosts.pageInfo.endCursor;
    final hasNextPage = result.parsedData?.likedPosts.pageInfo.hasNextPage;

    return pushed.value
        ? Column(children: [
            ...praises
                .map((praise) => Praise(
                    praise: praise!.node!,
                    optimistic:
                        result.source == QueryResultSource.optimisticResult))
                .toList(),
            hasNextPage!
                ? FetchMoreButton(first: first, or: or, after: fetchMoreCursor)
                : Container()
          ])
        : Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                  width: 280,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20),
                        backgroundColor: blueButtonColor,
                        side:
                            const BorderSide(color: blueButtonColor, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        pushed.value = true;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(width: 24),
                          Text(
                            "もっと見る",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Icon(Icons.expand_circle_down, color: Colors.white)
                        ],
                      )))
            ])
          ]);
  }
}
