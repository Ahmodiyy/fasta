import 'package:flutter/cupertino.dart';

class MonthProvider with ChangeNotifier {
  // A property to store the selected month
  String? selectedMonth;

  // A method to update the selected month and notify the listeners
  void updateMonth(String? newValue) {
    selectedMonth = newValue;
    notifyListeners();
  }
}


class YearProvider with ChangeNotifier {
  // A property to store the selected month
  int? selectedYear;

  // A method to update the selected month and notify the listeners
  void updateYear(int? newValueYear) {
    selectedYear = newValueYear;
    notifyListeners();
  }
}
