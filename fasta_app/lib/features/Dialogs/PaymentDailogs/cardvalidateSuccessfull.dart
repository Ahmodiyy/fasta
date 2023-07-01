import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../Payment/PaymenCardtOption/PaymentCardDetails.dart';

class LoadSuccessful extends StatefulWidget {
  const LoadSuccessful({super.key});

  @override
  State<LoadSuccessful> createState() => _LoadSuccessfulState();
}

class _LoadSuccessfulState extends State<LoadSuccessful> {
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const PaymentCardDetails(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(132, 254, 254, 254),
      content: Container(
        height: 250.h,
        child: SpinKitFadingCube(
          color: Color.fromARGB(255, 20, 43, 44),
          size: 50.sp,
        ),
      ),
    );
  }
}
