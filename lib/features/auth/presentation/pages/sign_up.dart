import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          children: [
            Text(
              "SignUp",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(hintText: 'Name'),
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
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sign Up'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
