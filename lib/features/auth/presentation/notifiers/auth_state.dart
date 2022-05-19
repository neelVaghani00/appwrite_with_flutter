import 'package:appwrite/appwrite.dart';
import 'package:appwrite_with_flutter/core/res/app_constants.dart';
import 'package:flutter/cupertino.dart';

class AuthState extends ChangeNotifier {
  Client client = Client();
  late Account account;
  AuthState() {
    _init();
  }
  _init() {
    client
        .setEndpoint(AppConstants.endpoint)
        .setProject(AppConstants.projectId);
    account = Account(client);
  }

  login({required String email, required String password}) async {
    try {
      var result =
          await account.createSession(email: email, password: password);
      print(result);
    } catch (e) {
      print(e);
    }
  }

  createAccount(
      {required String name,
      required String email,
      required String password}) async {
    try {
      var result = await account.create(
          name: name, email: email, password: password, userId: "123123123");
      print(result);
    } catch (e) {
      print(e);
    }
  }
}
