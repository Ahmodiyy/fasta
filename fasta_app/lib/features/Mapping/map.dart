import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: AnimatedTextKit(
             repeatForever: true,
            animatedTexts: [
              ScaleAnimatedText('Map',
                  textStyle: TextStyle(
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 28, 55, 56))),
              ScaleAnimatedText('Not',
                  textStyle: TextStyle(
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 28, 55, 56))),
              ScaleAnimatedText('Available',
                  textStyle: TextStyle(
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 28, 55, 56))),
            ],
          ),
        ),
      ],
    );
  }
}
