import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/work.dart';
import 'package:hokkori/pages/profile/profile_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';

class PostedWorks extends HookWidget {
  final String userID;
  const PostedWorks({Key? key, required this.userID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result = useQuery$PostedWorks(Options$Query$PostedWorks(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$PostedWorks(
            where: Input$WorkWhereInput(hasPostsWith: [
          Input$PostWhereInput(hasOwnerWith: [Input$UserWhereInput(id: userID)])
        ])))).result;
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
    final works = result.parsedData?.works.edges ?? [];

    var size = MediaQuery.of(context).size;

    final double itemWidth = (size.width - 40) / 3;
    final double itemHeight = itemWidth + 28;

    return Container(
        margin: const EdgeInsets.only(top: 10),
        child: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisSpacing: 5,
          mainAxisSpacing: 15,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          children: works
              .map((work) => Work(
                    work: work!.node!,
                    size: itemWidth,
                  ))
              .toList(),
        ));
  }
}
