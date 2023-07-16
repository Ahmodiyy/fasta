import 'package:fasta_app/features/GetStarted/sendPackagePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SendpackageAnimation extends StatefulWidget {
  const SendpackageAnimation({super.key});

  @override
  State<SendpackageAnimation> createState() => _SendpackageAnimationState();
}

class _SendpackageAnimationState extends State<SendpackageAnimation> {
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const SendpackagesPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(132, 254, 254, 254),
      content: Container(
        height: 120.h,
        width: 10.w,
        child: SpinKitFadingCube(
          color: Color.fromARGB(255, 20, 43, 44),
          size: 50.sp,
        ),
      ),
    );
  }
}
