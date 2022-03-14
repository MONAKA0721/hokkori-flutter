import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          child: const Text(
            "休憩",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "完成",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
