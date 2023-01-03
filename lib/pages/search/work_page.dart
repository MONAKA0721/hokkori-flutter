import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/common.graphql.dart';
import 'package:hokkori/pages/search/praise_page.dart';
import 'package:hokkori/pages/search/search_page.graphql.dart';
import 'package:hokkori/pages/search/work_letters.dart';
import 'package:hokkori/pages/search/work_praises.dart';
import 'package:hokkori/utils/colors.dart';

class WorkPageArguments {
  final String id;

  WorkPageArguments(this.id);
}

class WorkPage extends HookWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as WorkPageArguments;
    final workID = arguments.id;

    final result = useQuery$Work(Options$Query$Work(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$Work(
          workID: workID,
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
    final deviceWidth = MediaQuery.of(context).size.width;

    final work = result.parsedData?.work as Query$Work$work$$Work;
    final praises = work.posts!
        .where((post) => post.type == Enum$PostPostType.praise)
        .toList();
    praises.sort((a, b) => b.createTime.compareTo(a.createTime));
    final latestPraises = praises.take(6).toList();

    final workCategories = result.parsedData?.workCategories;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          work.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
            alignment: Alignment.topCenter,
            height: deviceWidth * 1231 / 750,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/work_background.png'),
                    fit: BoxFit.fitWidth)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  work.thumbnail!,
                  width: deviceWidth * 250 / 390,
                ),
                Container(
                    height: deviceWidth * 1128 / 750,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/work_fukidashi.png'),
                            fit: BoxFit.fitWidth))),
                ...latestPraises.asMap().entries.map((entry) {
                  return PositionedPraise(
                    praises: latestPraises,
                    entry: entry,
                  );
                })
              ],
            )),
        WorkPraises(workID: work.id, workCategories: workCategories),
        const SizedBox(
          height: 50,
        ),
        WorkLetters(
          workID: work.id,
        ),
        const SizedBox(
          height: 50,
        ),
      ])),
    );
  }
}

class PositionedPraise extends StatelessWidget {
  final List<Fragment$PraiseSummary> praises;
  final MapEntry<int, Fragment$PraiseSummary> entry;
  const PositionedPraise({Key? key, required this.entry, required this.praises})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = entry.key;

    double _height(int index) {
      final int height;
      switch (index) {
        case 0:
          height = 120;
          break;
        case 1:
          height = 120;
          break;
        case 2:
          height = 90;
          break;
        case 3:
          height = 90;
          break;
        case 4:
          height = 120;
          break;
        case 5:
          height = 120;
          break;
        default:
          height = 0;
      }
      return height * (MediaQuery.of(context).size.width * 1128 / 750) / 586;
    }

    double _top(int index) {
      final int top;
      switch (index) {
        case 0:
          top = 110;
          break;
        case 1:
          top = 110;
          break;
        case 2:
          top = 260;
          break;
        case 3:
          top = 265;
          break;
        case 4:
          top = 480;
          break;
        case 5:
          top = 480;
          break;
        default:
          return 0;
      }
      return top * (MediaQuery.of(context).size.width * 1128 / 750) / 586 -
          _height(index) / 2;
    }

    double _width(int index) {
      final int width;
      switch (index) {
        case 0:
          width = 140;
          break;
        case 1:
          width = 140;
          break;
        case 2:
          width = 70;
          break;
        case 3:
          width = 90;
          break;
        case 4:
          width = 150;
          break;
        case 5:
          width = 150;
          break;
        default:
          return 0;
      }
      return width * MediaQuery.of(context).size.width / 390;
    }

    double _left(int index) {
      final int left;
      switch (index) {
        case 0:
          left = 85;
          break;
        case 1:
          left = 310;
          break;
        case 2:
          left = 45;
          break;
        case 3:
          left = 345;
          break;
        case 4:
          left = 85;
          break;
        case 5:
          left = 310;
          break;
        default:
          return 0;
      }
      return left * MediaQuery.of(context).size.width / 390 - _width(index) / 2;
    }

    return Positioned(
        top: _top(index),
        left: _left(index),
        child: Container(
            width: _width(
              index,
            ),
            height: _height(index),
            alignment: Alignment.center,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Flexible(
                  child: Text(
                entry.value.title,
                maxLines: 3,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
              IconButton(
                icon: const CircleAvatar(
                    backgroundColor: blueButtonColor,
                    foregroundColor: Colors.white,
                    radius: 14,
                    child: Icon(Icons.chevron_right)),
                onPressed: () {
                  Navigator.pushNamed(context, '/praise',
                      arguments: PraisePageArguments(praises, index));
                },
              )
            ])));
  }
}
