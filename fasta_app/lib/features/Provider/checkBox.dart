import 'package:flutter/material.dart';

class CheckBoxModel extends ChangeNotifier {
  bool _isChecked = false;
  bool _isChecked1 = false;

  // Getter for the checkbox value
  bool get isChecked => _isChecked;
   bool get isChecked1 => _isChecked1;

  // Setter for the checkbox value
  void setIsChecked(bool value) {
    _isChecked = value;
    _isChecked1 = false;
    notifyListeners(); // Notify the listeners of the change
  }

   void setIsChecked1(bool value) {
    _isChecked1 = value;
    _isChecked = false;
    notifyListeners(); // Notify the listeners of the change
  }
}