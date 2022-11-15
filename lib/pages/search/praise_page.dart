import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/common/praise.dart';
import 'package:hokkori/pages/search/overlay_state_mixin.dart';

class PraisePageArguments {
  final List<Fragment$PraiseSummary> praises;
  final int index;

  PraisePageArguments(this.praises, this.index);
}

class PraisePage extends StatefulWidget {
  const PraisePage({Key? key}) : super(key: key);

  @override
  State<PraisePage> createState() => _PraisePageState();
}

class _PraisePageState extends State<PraisePage> with OverlayStateMixin {
  late ScrollController _scrollController;
  late double scroll;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _scrollController.jumpTo(scroll));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PraisePageArguments;
    scroll = arguments.index * 380;
    final praises = arguments.praises;
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
            children: praises
                .asMap()
                .entries
                .map((entry) => Column(children: [
                      SizedBox(
                          width: 380,
                          child: Praise(
                            praise: entry.value,
                            optimistic: false,
                          )),
                      Indicator(nowIndex: entry.key, max: praises.length)
                    ]))
                .toList()),
      ),
      IconButton(
        iconSize: 80,
        icon: SvgPicture.asset('assets/close.svg', width: 80),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      const Text(
        "閉じる",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )
    ]);
  }
}

class Indicator extends StatelessWidget {
  final int nowIndex;
  final int max;
  const Indicator({Key? key, required this.nowIndex, required this.max})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final indices = List.generate(max, (index) => index);
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: indices
            .map((index) => Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          index == nowIndex ? Colors.white : Colors.transparent,
                      border: Border.all(color: Colors.white, width: 1)),
                ))
            .toList());
  }
}
