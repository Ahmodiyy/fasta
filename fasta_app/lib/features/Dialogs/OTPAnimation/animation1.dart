
import 'package:fasta_app/features/OTP/username.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loadaut1 extends StatefulWidget {
  const Loadaut1({super.key});

  @override
  State<Loadaut1> createState() => _Loadaut1State();
}

class _Loadaut1State extends State<Loadaut1> {
  
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserForm ()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(90),
      child: AlertDialog(
        backgroundColor: Color.fromARGB(145, 248, 248, 248),
        content: Container(
          height: 40.h,
          width: 10.w,
          child: SpinKitFadingCube(
            color: Color.fromARGB(255, 20, 43, 44),
            size: 50.sp,
          ),
        ),
      ),
    );
  }
}