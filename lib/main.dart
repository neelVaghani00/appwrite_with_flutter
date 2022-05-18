import 'package:appwrite/appwrite.dart';
import 'package:appwrite_with_flutter/features/auth/presentation/pages/login.dart';
import 'package:flutter/material.dart';

import 'general/presentation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LoginPage());
  }
}
