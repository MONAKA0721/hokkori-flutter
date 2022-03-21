import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i1.wp.com/hanenews.com/wp-content/uploads/2018/12/b34ea738486a9ced02c5bc7152595187.jpg?fit=265%2C335&ssl=1")),
            const Spacer(),
            Icon(
              Icons.favorite,
              color: Colors.pink.shade200,
              size: 30,
            ),
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.settings, size: 30), onPressed: () {}),
          ],
        ));
  }
}
