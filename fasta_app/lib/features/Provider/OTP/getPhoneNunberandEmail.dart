
import 'package:flutter/material.dart';

class PhoneNumber extends ChangeNotifier{
 
    String userphoneNumber = '';
    String e_mail = '';

    String get user_phoneNumber1 => userphoneNumber;
    String get e_Mail1 => e_mail;

    void updatePhoneNumberandemail (String newphoneNumber, new_e_mail, newOTP){
      userphoneNumber = newphoneNumber;
      e_mail = new_e_mail;
      notifyListeners();
    }
}


