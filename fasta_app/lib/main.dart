import 'package:fasta_app/features/Provider/checkBox.dart';
import 'package:fasta_app/features/Provider/passDateandTime.dart';
import 'package:fasta_app/features/Provider/setYeah.dart';
import 'package:fasta_app/features/onboarding/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

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
            // All providers to change the app state
            ChangeNotifierProvider(
              create: (context) => DateAndTime(),
            ),
            ChangeNotifierProvider(
              create: (context) => MonthProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => YearProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => CheckBoxModel(),
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
