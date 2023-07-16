import 'package:fasta_app/features/GetStarted/deliveryHistory.dart';
import 'package:fasta_app/features/Provider/OTP/username.dart';
import 'package:fasta_app/features/onboarding/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Drawer_page extends StatefulWidget {
  const Drawer_page({super.key});

  @override
  State<Drawer_page> createState() => _Drawer_pageState();
}

class _Drawer_pageState extends State<Drawer_page> {
  double _progressValue = 0.0;
  bool showloadingAnimation = false;

  void startLoadingAnimation() {
    setState(() {
      _progressValue = 0.0;
    });

    // Simulating loading progress
    Future.delayed(Duration(milliseconds: 100), () {
      _updateProgress(0.01);
    });
  }

  void _updateProgress(double value) {
    if (mounted) {
      setState(() {
        _progressValue += value;
        if (_progressValue >= 1.0) {
          _progressValue = 1.0;
          _navigateToNewScreen();
        } else {
          // Continue updating progress
          Future.delayed(Duration(milliseconds: 100), () {
            _updateProgress(0.01);
          });
        }
      });
    }
  }


  void _navigateToNewScreen() {
    // Perform navigation to the new screen here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Welcompage()),
    );
  }

  String _formatPercentage(double value) {
    final percentage = (value * 100).toStringAsFixed(0);
    return '$percentage%';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: double.infinity,
          leading: Builder(
            builder: (context) => Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_circle_left_outlined,
                      color: Color.fromARGB(255, 28, 55, 56), size: 35.sp),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Expanded(
              flex: 4,
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                    padding: EdgeInsets.all(15.w.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Consumer<UserName>(
                                  builder: (context, model, child) {
                                return Text(model.userName,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 28, 55, 56)));
                              }),
                              SizedBox(height: 5),
                              Text.rich(TextSpan(
                                  text: 'Total Amount Spent: ',
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 28, 55, 56)),
                                  children: [
                                    TextSpan(
                                        text: '\u20A6 1000',
                                        style: TextStyle(color: Colors.red)),
                                  ]))
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 28, 55, 56),
                              borderRadius: BorderRadius.circular(20)),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push<void>(
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const Delivery_history(),
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 15.w.h, bottom: 15.w.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                      size: 30.w.h,
                                    ),
                                    Text(
                                      'Delivery History',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25.sp),
                                    )
                                  ]),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: const Color.fromARGB(255, 28, 55, 56),
                child: Padding(
                  padding: EdgeInsets.all(20.w.h),
                  child: ListView(
                    children: [
                      ListTile(
                          leading: Icon(Icons.man_outlined,
                              color: Colors.white, size: 30.sp),
                          title: Text(
                            'Refer a friend',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          )),
                      ListTile(
                          leading: Icon(Icons.contact_phone_outlined,
                              color: Colors.white, size: 30.sp),
                          title: Text(
                            'Contact',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          )),
                      ListTile(
                          leading: Icon(Icons.warning_amber,
                              color: Colors.white, size: 30.sp),
                          title: Text(
                            'Legal',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          )),
                      ListTile(
                        leading: Icon(Icons.settings,
                            color: Colors.white, size: 30.sp),
                        title: GestureDetector(
                          onTap: () {
                            startLoadingAnimation();
                            setState(() {
                              showloadingAnimation = true;
                            });
                          },
                          child: Text(
                            'Logout',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 28, 55, 56),
                child: Visibility(
                  visible: showloadingAnimation,
                  child: Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: LiquidLinearProgressIndicator(
                      value: _progressValue,
                      valueColor:
                          AlwaysStoppedAnimation(Color.fromARGB(255, 28, 55, 56)),
                      backgroundColor: Colors.grey,
                      borderRadius: 12.0,
                      direction: Axis.horizontal,
                      center: Text(
                        _formatPercentage(_progressValue),
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
