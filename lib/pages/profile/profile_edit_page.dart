import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hokkori/graphql/ent.graphql.dart';
import 'package:hokkori/pages/profile/profile_page.graphql.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/providers.dart';
import 'package:hokkori/utils/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

class ProfileEditPage extends StatefulHookConsumerWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends ConsumerState<ProfileEditPage> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _profileController = TextEditingController();
  final _picker = ImagePicker();
  File? image;

  @override
  Widget build(BuildContext context) {
    _nameController.text = ref.watch(userProvider).name;
    _usernameController.text = ref.watch(userProvider).username;
    _profileController.text = ref.watch(userProvider).profile;

    final avatarURL = ref.watch(userProvider).avatarURL;

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
            SubmitButton(
              nameController: _nameController,
              usernameController: _usernameController,
              profileController: _profileController,
              image: image,
            )
          ],
          title:
              const Text("プロフィールを編集", style: TextStyle(color: Colors.black))),
      body: Column(children: [
        Center(
            child: image != null
                ? CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: FileImage(image!),
                  )
                : avatarURL != ""
                    ? CircleAvatar(
                        maxRadius: 40, backgroundImage: NetworkImage(avatarURL))
                    : const CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: AssetImage("assets/noimage.png"))),
        TextButton(
            onPressed: () async {
              final _image = await _picker.pickImage(
                  source: ImageSource.gallery, requestFullMetadata: false);
              if (_image == null) return;
              setState(() {
                image = File(_image.path);
              });
            },
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
              keyboardType: TextInputType.multiline,
              maxLines: null,
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

class SubmitButton extends HookConsumerWidget {
  final TextEditingController nameController;
  final TextEditingController usernameController;
  final TextEditingController profileController;
  final File? image;
  const SubmitButton(
      {Key? key,
      required this.nameController,
      required this.usernameController,
      required this.profileController,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateUserMutation =
        useMutation$UpdateUser(WidgetOptions$Mutation$UpdateUser());
    final updateUserResult = updateUserMutation.result;
    return updateUserResult.isLoading
        ? const SizedBox(
            width: 70,
            height: 70,
            child: Center(child: CircularProgressIndicator()))
        : TextButton(
            onPressed: () async {
              final result = updateUserMutation.runMutation(
                  Variables$Mutation$UpdateUser(
                      image: image == null
                          ? null
                          : MultipartFile.fromBytes(
                              '', image!.readAsBytesSync()),
                      userID: ref.watch(userProvider).id,
                      input: Input$UpdateUserInput(
                        name: nameController.text,
                        username: usernameController.text,
                        profile: profileController.text,
                      )));
              final networkResult = await result.networkResult;
              if (networkResult!.hasException) {
                return;
              }
              final updatedUser = networkResult.parsedData?.updateUser;
              ref.watch(userProvider.notifier).state = User(
                  updatedUser!.id,
                  updatedUser.name,
                  updatedUser.username!,
                  updatedUser.profile!,
                  updatedUser.avatarURL!);
              Navigator.of(
                context,
              ).pop();
            },
            child: const Text(
              "決定",
              style: TextStyle(color: blueButtonColor),
            ));
  }
}
