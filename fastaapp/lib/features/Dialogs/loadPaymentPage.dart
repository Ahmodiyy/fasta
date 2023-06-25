import 'package:fastaapp/features/Mapping/mappingPage.dart';
import 'package:fastaapp/features/Payment/paymentOption.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadPaymentPAge extends StatefulWidget {
  LoadPaymentPAge({
    super.key,
  });
  @override
  State<LoadPaymentPAge> createState() => _LoadAnimationState();
}

class _LoadAnimationState extends State<LoadPaymentPAge> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaymenCardtOption()),
      ).then((value) {
        _handleValue(value);
      });
    });
  }

  void _handleValue(String value) {
    if (value == 'showDialog') {
      showDialog(
        context: context,
        barrierColor: Color.fromARGB(83, 28, 55, 56),
        builder: (context) {
          return AlertDialog(
              content: Container(
            height: 260.h,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.gpp_good_outlined,
                      color: Color.fromARGB(255, 28, 55, 56), size: 70.sp),
                  Text('Successful',
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 55, 56),
                          fontSize: 25.sp)),
                  Text(
                      'Your package delivery is confirmed. Dispactcher would come for pickup at the time scheduled.',
                      style: TextStyle(fontSize: 15.sp)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const MappingPage(),
                        ),
                      );
                    },
                    child: Text('Done',
                        style: TextStyle(
                            color: Color.fromARGB(255, 28, 55, 56),
                            fontSize: 20.sp)),
                  )
                ]),
          ));
        },
      );
    }
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
