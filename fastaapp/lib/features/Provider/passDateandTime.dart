import 'package:flutter/material.dart';

class DateAndTime extends ChangeNotifier{
   String _dateTime = '';

  String get dateTime => _dateTime;

  void updateDateTime(String newDateTime) {
    _dateTime = newDateTime;
    notifyListeners();
  }
}