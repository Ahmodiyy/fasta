import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DistanceCalculation extends StatelessWidget {
  const DistanceCalculation({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), 
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Center(
                  child: Icon(
                Icons.car_crash_sharp,
                size: 35.sp,
                color: Color.fromARGB(255, 28, 55, 56),
              ))),
          Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FittedBox(
                    child: Text.rich(TextSpan(
                        text: 'Distance',
                        style: TextStyle(fontSize: 20.sp),
                        children: [
                          TextSpan(
                              text: '\n jjj',
                              style: TextStyle(fontSize: 15.sp))
                        ])),
                  ),
                  FittedBox(
                    child: Text.rich(TextSpan(
                        text: 'Time',
                        style: TextStyle(fontSize: 20.sp),
                        children: [
                          TextSpan(
                              text: '\n jjj',
                              style: TextStyle(fontSize: 15.sp))
                        ])),
                  ),
                  FittedBox(
                    child: Text.rich(TextSpan(
                        text: 'Price',
                        style: TextStyle(fontSize: 20.sp),
                        children: [
                          TextSpan(
                              text: '\n jjj',
                              style: TextStyle(fontSize: 15.sp))
                        ])),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
