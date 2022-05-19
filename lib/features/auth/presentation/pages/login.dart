import 'package:appwrite_with_flutter/features/auth/presentation/notifiers/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(hintText: 'Email'),
              controller: _email,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  AuthState state =
                      Provider.of<AuthState>(context, listen: false);
                      state.login(email: _email.text, password: _password.text);
                },
                child: const Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
