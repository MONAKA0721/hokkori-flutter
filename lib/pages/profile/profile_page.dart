import 'package:flutter/material.dart';
import 'package:hokkori/pages/profile/posted_letters.dart';
import 'package:hokkori/pages/profile/posted_praises.dart';
import 'package:hokkori/pages/profile/posted_works.dart';
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

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                  maxRadius: 40,
                  backgroundImage: NetworkImage(
                      "https://i1.wp.com/hanenews.com/wp-content/uploads/2018/12/b34ea738486a9ced02c5bc7152595187.jpg?fit=265%2C335&ssl=1")),
              Column(
                children: [const Text("10"), const Text("投稿")],
              ),
              Column(
                children: [const Text("75"), const Text("フォロー")],
              ),
              Column(
                children: [const Text("30"), const Text("フォロワー")],
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
                fixedSize: const Size.fromWidth(double.maxFinite)),
            onPressed: () {},
            child: Text("プロフィールを編集"),
          ),
          const PostedItems()
        ],
      ),
    );
  }
}

class PostedItems extends StatefulWidget {
  const PostedItems({Key? key}) : super(key: key);

  @override
  State<PostedItems> createState() => _PostedItemsState();
}

class _PostedItemsState extends State<PostedItems> {
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
        items = const PostedLetters();
        break;
      case 2:
        items = const PostedPraises();
        break;
      default:
        items = Container();
        break;
    }
    return Column(
      children: [
        Row(
          children: [_itemsTab(0, "a"), _itemsTab(1, "b"), _itemsTab(2, "c")],
        ),
        items
      ],
    );
  }
}
