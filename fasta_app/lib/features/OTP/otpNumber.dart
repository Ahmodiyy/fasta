import 'package:fasta_app/features/OTP/comfirmOTP.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OtpPhoneNumber extends StatefulWidget {
  const OtpPhoneNumber({Key? key}) : super(key: key);

  @override
  State<OtpPhoneNumber> createState() => _OtpPhoneNumberState();
}

class _OtpPhoneNumberState extends State<OtpPhoneNumber> {
  GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return FirebasePhoneAuthProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 28, 55, 56),
          body: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: IntlPhoneField(
                        focusNode: focusNode,
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        languageCode: "en",
                        onChanged: (phone) {
                          // print(phone.completeNumber);
                        },
                        onCountryChanged: (country) {
                          print('Country changed to: ' + country.name);
                        },
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
