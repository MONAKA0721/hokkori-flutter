import 'dart:convert';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hokkori/utils/blue_button.dart';
import 'package:hokkori/utils/colors.dart';
import 'package:hokkori/utils/header.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

final inquiryKindProvider = StateProvider<String>((ref) => "サムネイル");
final inquiryKinds = [
  "サムネイル",
  "ホーム画面",
  "さがす画面",
  "つたえる画面",
  "ほっこり",
  "レター",
];
final inquiryTextProvider = StateProvider<String>((ref) => "");

class InquiryPage extends ConsumerWidget {
  final Function navigate;
  const InquiryPage({super.key, required this.navigate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Header(),
        Expanded(
          child: Container(
              color: backgroundColor,
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(mainAxisSize: MainAxisSize.min, children: const [
                    Icon(
                      Icons.help_outline,
                      size: 35,
                      color: primaryColor,
                    ),
                    Text(
                      "お問い合わせ",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                    )
                  ]),
                  const SizedBox(height: 15),
                  const Text("問い合わせたい内容を選択してください",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const SizedBox(height: 15),
                  const KindDropdown(),
                  Container(
                      margin:
                          const EdgeInsets.only(top: 30, right: 30, left: 30),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 0.1,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        initialValue: ref.watch(inquiryTextProvider),
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        decoration: const InputDecoration(
                            hintText: "お問い合わせ内容を入力…",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(15)),
                        onChanged: (value) {
                          ref.watch(inquiryTextProvider.notifier).state = value;
                        },
                      )),
                  const SizedBox(height: 50),
                  SendInquiryButton(navigate: navigate),
                ],
              ))),
        )
      ],
    );
  }
}

class SendInquiryButton extends ConsumerStatefulWidget {
  final Function navigate;
  const SendInquiryButton({super.key, required this.navigate});

  @override
  ConsumerState<SendInquiryButton> createState() => _SendInquiryButtonState();
}

class _SendInquiryButtonState extends ConsumerState<SendInquiryButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SizedBox(
            height: 55, child: Center(child: CircularProgressIndicator()))
        : BlueButton(
            title: "送信",
            width: 180,
            onPressed: () async {
              if (ref.watch(inquiryTextProvider) == "") return;
              setState(() => {isLoading = true});
              Uri url = Uri.parse(dotenv.get('SLACK_URL'));
              Map<String, String> headers = {
                'content-type': 'application/json',
              };

              final postData = {
                "blocks": [
                  {
                    "type": "section",
                    "text": {
                      "type": "mrkdwn",
                      "text":
                          "*${ref.watch(inquiryKindProvider)}*\n${ref.watch(inquiryTextProvider)}"
                    }
                  }
                ]
              };

              String body = jsonEncode(postData);
              await http.post(url, headers: headers, body: body);

              ref.watch(inquiryKindProvider.notifier).state = "サムネイル";
              ref.watch(inquiryTextProvider.notifier).state = "";
              setState(() => {isLoading = false});

              widget.navigate();
            });
  }
}

class KindDropdown extends ConsumerStatefulWidget {
  const KindDropdown({super.key});

  @override
  _KindDropdownState createState() => _KindDropdownState();
}

class _KindDropdownState extends ConsumerState<KindDropdown> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
        value: ref.watch(inquiryKindProvider),
        onChanged: (value) {
          ref.watch(inquiryKindProvider.notifier).state = value as String;
        },
        icon: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1)),
          child: const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
        ),
        iconOnClick: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1)),
          child: const Icon(
            Icons.expand_less,
            color: Colors.white,
          ),
        ),
        buttonDecoration: BoxDecoration(
            borderRadius: isOpen
                ? const BorderRadius.vertical(top: Radius.circular(30))
                : BorderRadius.circular(30),
            color: blueButtonColor),
        underline: Container(),
        buttonPadding: const EdgeInsets.only(
          right: 20,
        ),
        buttonHeight: 60,
        onMenuStateChange: (bool open) {
          setState(() {
            isOpen = open;
          });
        },
        itemHeight: 60,
        dropdownDecoration: const BoxDecoration(
            color: blueButtonColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        items: inquiryKinds
            .map((inquiryKind) => DropdownMenuItem<String>(
                value: inquiryKind,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      inquiryKind,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ))))
            .toList());
  }
}
