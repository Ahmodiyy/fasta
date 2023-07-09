import 'package:email_otp/email_otp.dart';
import 'package:fasta_app/features/Dialogs/OTPAnimation/animation1.dart';
import 'package:fasta_app/features/OTP/otpNumber.dart';
import 'package:fasta_app/features/OTP/otpcode.dart';
import 'package:fasta_app/features/OTP/username.dart';
import 'package:fasta_app/features/Provider/OTP/getPhoneNunberandEmail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Verifybutton extends StatefulWidget {
  const Verifybutton({super.key, required this.myauth});
  final EmailOTP myauth;
  @override
  State<Verifybutton> createState() => _nameState();
}

class _nameState extends State<Verifybutton> {
  String otpController = ''; // Replace with the actual OTP value
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();

  void verifyOTP() async {
    if (await widget.myauth.verifyOTP(otp: otp1Controller.text
            //  + otp2Controller.text +
            //     otp3Controller.text +
            //     otp4Controller.text
            ) ==
        true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("OTP is verified"),
        ),
      );
      showDialog(
        context: context,
        builder: (context) {
          return Loadaut1();
        },
      );
      // Navigator.push<void>(
      //   context,
      //   MaterialPageRoute<void>(
      //     builder: (BuildContext context) => const UserForm(),
      //   ),
      // );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Invalid OTP"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer<PhoneNumber>(
                builder: (context, model, child) {
                  return Wrap(
                    children: [
                      Text(
                        'Enter the 4-digit code sent to you at.',
                        style: TextStyle(color: Colors.white, fontSize: 25.sp),
                      ),
                      Text(
                        model.userphoneNumber,
                        style: TextStyle(color: Colors.white, fontSize: 22.sp),
                      ),
                      Text(
                        " or " + model.e_mail,
                        style: TextStyle(color: Colors.white, fontSize: 22.sp),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: OtpScreen(
                      otpController: otp1Controller,
                    ),
                  ),
                  //  Flexible(
                  //   child: OtpScreen(
                  //         otpController: otp2Controller,
                  //       ),
                  // ),
                  //  Flexible(
                  //   child: OtpScreen(
                  //         otpController: otp3Controller,
                  //       ),
                  // ),
                  //  Flexible(
                  //   child: OtpScreen(
                  //         otpController: otp4Controller,
                  //       ),
                  // ),
                ],
              ),
              SizedBox(height: 50.h),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5.sp),
                        child: Text(
                          'I did not receive a code',
                          style: TextStyle(
                            color: Color.fromARGB(255, 28, 55, 56),
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(234, 70, 118, 120),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const OtpPhoneNumber(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(5.sp),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: verifyOTP,
                child: Text("Verify",
                    style: TextStyle(color: Colors.white, fontSize: 15.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
