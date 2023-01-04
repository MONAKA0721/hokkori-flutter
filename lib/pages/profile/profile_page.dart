import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/graphql/schema.graphql.dart';
import 'package:hokkori/pages/common/letters.dart';
import 'package:hokkori/pages/common/praises.dart';
import 'package:hokkori/pages/profile/bookmarked_posts.dart';
import 'package:hokkori/pages/profile/posted_works.dart';
import 'package:hokkori/pages/profile/profile_edit_page.dart';
import 'package:hokkori/pages/profile/profile_page.graphql.dart';
import 'package:hokkori/pages/search/work_page.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePageArguments {
  final String userID;

  ProfilePageArguments(this.userID);
}

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
            case '/work':
              builder = (BuildContext context) => const WorkPage();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          return MaterialPageRoute<Widget>(
              builder: builder, settings: settings);
        });
  }
}

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    final args = arguments != null ? arguments as ProfilePageArguments : null;
    final userID = args == null ? ref.watch(userProvider).id : args.userID;

    final result = useQuery$Profile(Options$Query$Profile(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$Profile(
          userID: userID,
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

    final user = result.parsedData?.user as Query$Profile$user$$User;
    final optimistic = result.source == QueryResultSource.optimisticResult;

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
              args == null
                  ? Navigator.of(context, rootNavigator: true).pop()
                  : Navigator.of(context).pop();
            },
          ),
          title: Text(
            user.username!,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: ProfileBody(user: user, optimistic: optimistic));
  }
}

class ProfileBody extends ConsumerWidget {
  final Query$Profile$user$$User user;
  final bool optimistic;
  const ProfileBody({Key? key, required this.user, required this.optimistic})
      : super(key: key);

  Map<String, dynamic>? extractUserData(Map<String, Object?> data) {
    final action = data['action'] as Map<String, dynamic>?;
    if (action == null) {
      return null;
    }
    return action['user'] as Map<String, dynamic>?;
  }

  FutureOr<void> Function(GraphQLDataProxy, QueryResult?)? get update =>
      (cache, result) {
        if (result!.hasException) {
          return;
        } else {
          final updated = {
            ...user.toJson(),
            ...extractUserData(result.data!)!,
          };
          cache.writeFragment(
            Fragment(
              document: gql(
                '''
                  fragment fields on User {
                    id
                    following
                    followers
                  }
                ''',
              ),
            ).asRequest(idFields: {
              '__typename': updated['__typename'],
              'id': updated['id'],
            }),
            data: updated,
          );
        }
      };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, dynamic> expectedFollowResult(bool followed) {
      final followers = user.followers;
      if (followed) {
        followers!.removeWhere((user) => user.id == ref.watch(userProvider).id);
      } else {
        followers!.add(Query$Profile$user$$User$followers(
            $__typename: "User", id: ref.watch(userProvider).id));
      }

      return <String, dynamic>{
        'action': {
          'user': {
            '__typename': 'User',
            'id': user.id,
            'followers': followers,
          }
        }
      };
    }

    final followed = user.followers!
        .map((user) => user.id)
        .contains(ref.watch(userProvider).id);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              user.avatarURL != ""
                  ? CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(user.avatarURL!))
                  : const CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage("assets/noimage.png")),
              Column(
                children: [
                  Text(
                    user.posts!.length.toString(),
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Text("投稿")
                ],
              ),
              Column(
                children: [
                  Text(user.following!.length.toString(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold)),
                  const Text("フォロー")
                ],
              ),
              Column(
                children: [
                  Text(user.followers!.length.toString(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold)),
                  const Text("フォロワー")
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(user.profile!),
          const SizedBox(
            height: 10,
          ),
          user.id == ref.watch(userProvider).id
              ? const ProfileEditButton()
              : followed
                  ? UnfollowButton(
                      expectedFollowResult: expectedFollowResult,
                      userID: user.id,
                      update: update,
                      optimistic: optimistic)
                  : FollowButton(
                      expectedFollowResult: expectedFollowResult,
                      userID: user.id,
                      update: update,
                      optimistic: optimistic),
          const SizedBox(
            height: 20,
          ),
          PostedItems(
            userID: user.id,
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      )),
    );
  }
}

class ProfileEditButton extends StatelessWidget {
  const ProfileEditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
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
    );
  }
}

class FollowButton extends HookConsumerWidget {
  final Map<String, dynamic> Function(bool) expectedFollowResult;
  final FutureOr<void> Function(GraphQLDataProxy, QueryResult?)? update;
  final String userID;
  final bool optimistic;
  const FollowButton(
      {Key? key,
      required this.expectedFollowResult,
      required this.userID,
      required this.update,
      required this.optimistic})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followUserMutation = useMutation$FollowUser(
        WidgetOptions$Mutation$FollowUser(update: update));

    follow() {
      followUserMutation.runMutation(
          Variables$Mutation$FollowUser(
              input: Input$FollowUserInput(
                  userID: userID, followerID: ref.watch(userProvider).id)),
          optimisticResult: expectedFollowResult(false));
    }

    final anyFollowLoading = followUserMutation.result.isLoading || optimistic;

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          side: const BorderSide(color: blueButtonColor),
          backgroundColor: blueButtonColor,
          fixedSize: const Size.fromWidth(double.maxFinite)),
      onPressed: anyFollowLoading ? null : follow,
      child: const Text(
        "フォローする",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class UnfollowButton extends HookConsumerWidget {
  final Map<String, dynamic> Function(bool) expectedFollowResult;
  final FutureOr<void> Function(GraphQLDataProxy, QueryResult?)? update;
  final String userID;
  final bool optimistic;
  const UnfollowButton(
      {Key? key,
      required this.expectedFollowResult,
      required this.update,
      required this.userID,
      required this.optimistic})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unfollowUserMutation = useMutation$UnfollowUser(
        WidgetOptions$Mutation$UnfollowUser(update: update));

    unfollow() {
      unfollowUserMutation.runMutation(
          Variables$Mutation$UnfollowUser(
              input: Input$UnfollowUserInput(
                  userID: userID, followerID: ref.watch(userProvider).id)),
          optimisticResult: expectedFollowResult(true));
    }

    final anyFollowLoading =
        unfollowUserMutation.result.isLoading || optimistic;

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          side: const BorderSide(color: blueButtonColor),
          backgroundColor: Colors.white,
          fixedSize: const Size.fromWidth(double.maxFinite)),
      onPressed: anyFollowLoading ? null : unfollow,
      child: const Text(
        "フォロー中",
        style: TextStyle(color: blueButtonColor),
      ),
    );
  }
}

class PostedItems extends ConsumerStatefulWidget {
  final String userID;
  const PostedItems({Key? key, required this.userID}) : super(key: key);

  @override
  ConsumerState<PostedItems> createState() => _PostedItemsState();
}

class _PostedItemsState extends ConsumerState<PostedItems> {
  int _selectedItemsIndex = 0;

  Widget _itemsTab(int index) {
    final String asset;
    final selected = _selectedItemsIndex == index;
    switch (index) {
      case 0:
        asset = selected ? 'assets/work.png' : 'assets/work_light.png';
        break;
      case 1:
        asset = selected ? 'assets/praise.png' : 'assets/praise_light.png';
        break;
      case 2:
        asset = selected ? 'assets/letter.png' : 'assets/letter_light.png';
        break;
      case 3:
        asset = selected ? 'assets/bookmark.png' : 'assets/bookmark_light.png';
        break;
      default:
        asset = '';
        break;
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemsIndex = index;
        });
      },
      child: Container(
        width: 40,
        padding: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          border: _selectedItemsIndex == index
              ? const Border(
                  bottom: BorderSide(color: primaryColor, width: 2),
                )
              : null,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          asset,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget items;
    switch (_selectedItemsIndex) {
      case 0:
        items = PostedWorks(
          userID: widget.userID,
        );
        break;
      case 1:
        items = Praises(
          hasHeading: false,
          or: [
            Input$PostWhereInput(hasOwnerWith: [
              Input$UserWhereInput(
                id: widget.userID,
              )
            ])
          ],
        );
        break;
      case 2:
        items = Letters(
          hasHeading: false,
          or: [
            Input$PostWhereInput(hasOwnerWith: [
              Input$UserWhereInput(
                id: widget.userID,
              )
            ])
          ],
        );
        break;
      case 3:
        items = BookmarkedPosts(
          userID: widget.userID,
        );
        break;
      default:
        items = Container();
        break;
    }
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [_itemsTab(0), _itemsTab(1), _itemsTab(2), _itemsTab(3)],
        ),
        items
      ],
    );
  }
}
