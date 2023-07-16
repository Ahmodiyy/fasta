import 'package:fasta_app/features/OTP/comfirmOTP.dart';
import 'package:fasta_app/features/Provider/OTP/getPhoneNunberandEmail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:email_otp/email_otp.dart';
import 'package:provider/provider.dart';

class OtpPhoneNumber extends StatefulWidget {
  const OtpPhoneNumber({Key? key}) : super(key: key);
  @override
  State<OtpPhoneNumber> createState() => _OtpPhoneNumberState();
}

class _OtpPhoneNumberState extends State<OtpPhoneNumber> {
  FocusNode focusNode = FocusNode();

  var getPhoneNumber = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController otp = TextEditingController();
  EmailOTP myauth = EmailOTP();

  void generateAndDisplayOTP() {
    otp.text = myauth.toString();
  }

  void _updatePhoneNumber() {
    Provider.of<PhoneNumber>(context, listen: false)
        .updatePhoneNumberandemail(getPhoneNumber.text, email.text, otp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Enter your number',
                style: TextStyle(fontSize: 20.sp, color: Colors.white)),
            SizedBox(
              height: 10.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: IntlPhoneField(
                focusNode: focusNode,
                controller: getPhoneNumber,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                languageCode: "en",
                onChanged: (phone) {},
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 5.h, bottom: 5.h),
                child: TextField(
                  style: TextStyle(color: Colors.black, fontSize: 20.sp),
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "User Email",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              child: TextButton(
                    onPressed: () async {
                      myauth.setConfig(
                          appName: "Email OTP",
                          userEmail: email.text,
                          otpLength: 4,
                          otpType: OTPType.digitsOnly);
                      if (await myauth.sendOTP() == true) {
                        // showDialog(
                        //   context: context,
                        //   builder: (context) {
                        //     return Loadaut1();
                        //   },
                        // );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.white,
                            content: Text("OTP has been sent",style: TextStyle(color: Colors.black)),
                          ),
                        );
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Verifybutton(myauth: myauth),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                              backgroundColor: Colors.white,
                          content: Text("Oops, OTP send failed",style: TextStyle(color: Colors.black)),
                        ));
                      }
                      generateAndDisplayOTP();
                      _updatePhoneNumber();
                    },
                  child: Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: Text('Next',
                        style: TextStyle(
                            color: Color.fromARGB(255, 28, 55, 56),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600)),
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: double.infinity,
              child: Text(
                'By continuing you may recive an SMS or Email for verification. Message and data rates may apply.',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
