import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/pages/common/praises.dart';
import 'package:hokkori/pages/profile/posted_works.dart';
import 'package:hokkori/pages/profile/profile_edit_page.dart';
import 'package:hokkori/pages/profile/profile_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePageNavigator extends StatelessWidget {
  const ProfilePageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case '/':
              builder = (BuildContext context) => const ProfilePage();
              break;
            case '/edit':
              builder = (BuildContext context) => const ProfileEditPage();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return MaterialPageRoute<Widget>(
              builder: builder, settings: settings);
        });
  }
}

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
          title: Text(
            ref.watch(userProvider).name,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: const ProfileBody());
  }
}

class ProfileBody extends HookConsumerWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = useQuery$MyInfo(Options$Query$MyInfo(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MyInfo(
          userID: ref.watch(userProvider).id,
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
    final postCount = result.parsedData?.posts.totalCount;
    final avatarURL = ref.watch(userProvider).avatarURL;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              avatarURL != ""
                  ? CircleAvatar(
                      maxRadius: 40, backgroundImage: NetworkImage(avatarURL))
                  : const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage("assets/noimage.png")),
              Column(
                children: [
                  Text(
                    postCount.toString(),
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Text("投稿")
                ],
              ),
              Column(
                children: const [
                  Text("75",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text("フォロー")
                ],
              ),
              Column(
                children: const [
                  Text("30",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text("フォロワー")
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "ハンドルネームはいりますああああ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("グラフィックデザイン/東京\nコラージュ作品よくつくります。あああああ"),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xffF3F2F2)),
                backgroundColor: const Color(0xffF3F2F2),
                fixedSize: const Size.fromWidth(double.maxFinite)),
            onPressed: () {
              Navigator.of(context).pushNamed('/edit');
            },
            child: const Text(
              "プロフィールを編集",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const PostedItems()
        ],
      )),
    );
  }
}

class PostedItems extends ConsumerStatefulWidget {
  const PostedItems({Key? key}) : super(key: key);

  @override
  ConsumerState<PostedItems> createState() => _PostedItemsState();
}

class _PostedItemsState extends ConsumerState<PostedItems> {
  int _selectedItemsIndex = 1;

  Widget _itemsTab(int index, String name) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedItemsIndex = index;
          });
        },
        child: Container(
            decoration: BoxDecoration(
                color: _selectedItemsIndex == index
                    ? Colors.white
                    : const Color(0xff6B4283).withOpacity(0.3)),
            alignment: Alignment.center,
            child: Text(
              name,
              style: TextStyle(
                  color: _selectedItemsIndex == index
                      ? Colors.black
                      : const Color(0xff6B4283).withOpacity(0.3)),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget items;
    switch (_selectedItemsIndex) {
      case 0:
        items = const PostedWorks();
        break;
      case 1:
        items = Letters(
          hasHeading: false,
          or: [
            Input$PostWhereInput(hasOwnerWith: [
              Input$UserWhereInput(
                id: ref.watch(userProvider).id,
              )
            ])
          ],
        );
        break;
      case 2:
        items = Praises(
          hasHeading: false,
          or: [
            Input$PostWhereInput(hasOwnerWith: [
              Input$UserWhereInput(
                id: ref.watch(userProvider).id,
              )
            ])
          ],
        );
        break;
      default:
        items = Container();
        break;
    }
    return Column(
      children: [
        Row(
          children: [
            _itemsTab(0, "作品"),
            _itemsTab(1, "レター"),
            _itemsTab(2, "ほっこり")
          ],
        ),
        items
      ],
    );
  }
}
