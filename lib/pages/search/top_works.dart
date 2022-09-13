import 'package:flutter/material.dart';

class TopWorks extends StatelessWidget {
  const TopWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
            TopicContent(),
            SizedBox(
              height: 10,
            ),
            TopicContent(),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: const [
            TopicContent(),
            SizedBox(
              height: 10,
            ),
            TopicContent(),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: const [
            TopicContent(),
            SizedBox(
              height: 10,
            ),
            TopicContent(),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        const TopicContent()
      ],
    );
  }
}

class TopicContent extends StatelessWidget {
  const TopicContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.network(
        "https://www.ojamakan.com/wp/wp-content/uploads/2022/04/4129Q0P1GML._AC_.jpg",
        width: 45,
        height: 45,
      ),
      const SizedBox(
        width: 7,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          "00",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        Icon(
          Icons.arrow_upward,
          size: 19,
        )
      ]),
      const SizedBox(
        width: 7,
      ),
      Container(
        padding: const EdgeInsets.only(top: 4),
        width: 150,
        child: const Text("#ああああああああああああああああ",
            overflow: TextOverflow.ellipsis, maxLines: 2),
      ),
    ]);
  }
}
