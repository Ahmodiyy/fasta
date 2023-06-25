import 'package:fastaapp/features/Provider/passDateandTime.dart';
import 'package:fastaapp/features/Provider/setYeah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'onboarding/firstPage.dart';

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
        return MultiProvider(
          providers: [
            // Create DateAndTime provider
            ChangeNotifierProvider(
              create: (context) => DateAndTime(),
            ),
            // Create MonthProvider provider
            ChangeNotifierProvider(
              create: (context) => MonthProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => YearProvider(),
            ),
          ],
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
