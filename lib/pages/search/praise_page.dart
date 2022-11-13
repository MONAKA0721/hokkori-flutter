import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/pages/search/overlay_state_mixin.dart';

class PraisePage extends StatefulWidget {
  const PraisePage({Key? key}) : super(key: key);

  @override
  State<PraisePage> createState() => _PraisePageState();
}

class _PraisePageState extends State<PraisePage> with OverlayStateMixin {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _scrollController.jumpTo(200));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          Container(
            width: 500,
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 500,
            height: 200,
            color: Colors.blue,
          ),
        ]),
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
