import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final Function loginAction;
  final String loginError;

  const Login({Key? key, required this.loginAction, required this.loginError})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            loginAction();
          },
          child: const Text('Login'),
        ),
        Text(loginError),
      ],
    );
  }
}
