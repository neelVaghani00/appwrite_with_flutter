import 'package:appwrite_with_flutter/features/auth/presentation/notifiers/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _name = TextEditingController();
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
            TextField(
              controller: _name,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _email,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _password, 
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  AuthState state = Provider.of<AuthState>(context,listen: false);
                  state.createAccount(name: _name.text, email: _email.text, password: _password.text); 
                },
                child: const Text('Sign Up'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
