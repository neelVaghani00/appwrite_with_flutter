import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Login",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(hintText: 'Email'),
          ),
          const SizedBox(height: 10),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Login'))
        ],
      ),
    );
  }
}
