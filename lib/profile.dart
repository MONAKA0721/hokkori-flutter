import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final Function logoutAction;
  final String name;
  final String picture;

  const Profile(
      {super.key,
      required this.logoutAction,
      required this.name,
      required this.picture});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 4.0),
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(picture),
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        Text('Name: $name'),
        const SizedBox(height: 48.0),
        ElevatedButton(
          onPressed: () {
            logoutAction();
          },
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
