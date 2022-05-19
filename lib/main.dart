import 'package:appwrite_with_flutter/core/presentation/notifiers/providers.dart';
import 'package:appwrite_with_flutter/features/auth/presentation/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/auth/presentation/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              primarySwatch: Colors.red,
              inputDecorationTheme:
                  const InputDecorationTheme(border: OutlineInputBorder())),
          home: SignUpPage()),
    );
  }
}
