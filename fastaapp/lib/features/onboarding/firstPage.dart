import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fastaapp/features/onboarding/welcomePage.dart';
import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';

class Firstview extends StatefulWidget {
  const Firstview({super.key});

  @override
  State<Firstview> createState() => _FirstviewState();
}

class _FirstviewState extends State<Firstview> {
  Timer? _timer;

  // start the timer
  void initState() {
      _timer = Timer(Duration(seconds: 10), navigateTonextPage);

  }

  // I override the dispose method to cancel the timer
  void dispose() {
    // Cancel the timer if it is not null
    _timer?.cancel();
    super.dispose();
  }

  //method to navigate to the second page
  void navigateTonextPage() {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Welcompage()),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: Color.fromARGB(255, 28, 55, 56),
          child: Column(children: [
            Expanded(
                child: Container(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Image.asset("images/onboardingImages/Subtract.png"),

                ],
              ),
            )),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset(
                            "images/onboardingImages/1.png",
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 120),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "images/onboardingImages/2.png",
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                Expanded(
                                  child: Image.asset(
                                    "images/onboardingImages/2.png",
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )))
          ]),
        ),
      ),
    );
  }
}
