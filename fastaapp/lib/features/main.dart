import 'package:fastaapp/features/Provider/passDateandTime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'onboarding/firstPage.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) => DateAndTime(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      child: SafeArea(child: const Firstview()),
    );
  }
}
