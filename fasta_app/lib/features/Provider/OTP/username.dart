import 'package:flutter/material.dart';

class UserName extends ChangeNotifier {
  String userName = '';

  String get user_Name => userName;

  void updateUserName(String newuserName) {
    userName = newuserName;
    notifyListeners();
  }
}
