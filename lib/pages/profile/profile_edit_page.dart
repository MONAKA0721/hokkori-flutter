import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/profile/profile_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileEditPage extends StatefulHookConsumerWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends ConsumerState<ProfileEditPage> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _profileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.text = ref.watch(userProvider).name;
    _usernameController.text = ref.watch(userProvider).username;
    _profileController.text = ref.watch(userProvider).profile;

    final avatarURL = ref.watch(userProvider).avatarURL;
    final updateUserMutation =
        useMutation$UpdateUser(WidgetOptions$Mutation$UpdateUser());
    final updateUserResult = updateUserMutation.result;
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
              Navigator.of(
                context,
              ).pop();
            },
          ),
          actions: [
            updateUserResult.isLoading
                ? const CircularProgressIndicator()
                : TextButton(
                    onPressed: () async {
                      final result = updateUserMutation
                          .runMutation(Variables$Mutation$UpdateUser(
                              userID: ref.watch(userProvider).id,
                              input: Input$UpdateUserInput(
                                name: _nameController.text,
                                username: _usernameController.text,
                                profile: _profileController.text,
                              )));
                      if ((await result.networkResult)!.hasException) {
                        return;
                      }
                    },
                    child: const Text(
                      "決定",
                      style: TextStyle(color: blueButtonColor),
                    ))
          ],
          title:
              const Text("プロフィールを編集", style: TextStyle(color: Colors.black))),
      body: Column(children: [
        Center(
            child: avatarURL != ""
                ? CircleAvatar(
                    maxRadius: 40, backgroundImage: NetworkImage(avatarURL))
                : const CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage("assets/noimage.png"))),
        TextButton(
            onPressed: () {},
            child: const Text(
              "プロフィール写真を変更",
              style: TextStyle(color: blueButtonColor, fontSize: 16),
            )),
        const Divider(
          thickness: 1,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const Text("名前"),
            const SizedBox(
              width: 100,
            ),
            Flexible(
                child: TextField(
              controller: _nameController,
              decoration: const InputDecoration(border: InputBorder.none),
            )),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const Text("ユーザーネーム"),
            const SizedBox(
              width: 30,
            ),
            Flexible(
                child: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(border: InputBorder.none),
            )),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const Text("自己紹介"),
            const SizedBox(
              width: 72,
            ),
            Flexible(
                child: TextField(
              controller: _profileController,
              decoration: const InputDecoration(border: InputBorder.none),
            )),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
      ]),
    );
  }
}
