import 'package:flutter/material.dart';

class UserName extends ChangeNotifier {
  String userName = '';

  String get user_Name => userName;

  void updatePhoneNumberandemail(String newuserName) {
    userName = newuserName;
    notifyListeners();
  }
}
