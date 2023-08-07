import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen(
      {Key? key,
      required this.otp1Controller,
      required this.otp2Controller,
      required this.otp3Controller,
      required this.otp4Controller,
      required TextEditingController otpController
      })
      : super(key: key);

  final TextEditingController otp1Controller;
  final TextEditingController otp2Controller;
   final TextEditingController otp3Controller;
    final TextEditingController otp4Controller;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 70.h,
          width: 55.w,
          child: TextFormField(
            controller: otp1Controller,
            style: TextStyle(fontSize: 30.sp),
            cursorColor: Colors.black,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            autofocus: true,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.sp),
                    ),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                contentPadding: EdgeInsets.all(10.sp)),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 70.h,
          width: 55.w,
          child: TextFormField(
            controller: otp2Controller,
            style: TextStyle(fontSize: 30.sp),
            cursorColor: Colors.black,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            autofocus: true,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.sp),
                    ),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                contentPadding: EdgeInsets.all(10.sp)),
            textAlign: TextAlign.center,
          ),
        ),
          Container(
          height: 70.h,
          width: 55.w,
          child: TextFormField(
            controller: otp3Controller,
            style: TextStyle(fontSize: 30.sp),
            cursorColor: Colors.black,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            autofocus: true,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.sp),
                    ),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                contentPadding: EdgeInsets.all(10.sp)),
            textAlign: TextAlign.center,
          ),
        ),
          Container(
          height: 70.h,
          width: 55.w,
          child: TextFormField(
            controller: otp4Controller,
            style: TextStyle(fontSize: 30.sp),
            cursorColor: Colors.black,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            autofocus: true,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
                counterText: "",
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.sp),
                    ),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                contentPadding: EdgeInsets.all(10.sp)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );

  }
}
