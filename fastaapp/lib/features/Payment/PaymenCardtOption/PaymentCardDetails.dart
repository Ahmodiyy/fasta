import 'package:fastaapp/features/Payment/PaymenCardtOption/cardDesign.dart';
import 'package:fastaapp/features/Payment/paymentOption.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentCardDetails extends StatelessWidget {
  const PaymentCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 55, 56),
        body: Padding(
          padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_circle_left_outlined,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 40),
                        onPressed: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const PaymenCardtOption(),
                            ),
                          );
                        },
                      ),
                      Text(
                        'Payment',
                        style: TextStyle(color: Colors.white, fontSize: 22.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: IntrinsicHeight(
                            child: Column(
                          children: [
                            Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(15.w.h),
                                child: Row(children: [
                                  Expanded(
                                      flex: 1,
                                      child: Center(
                                          child: Icon(
                                        Icons.car_crash_sharp,
                                        size: 50,
                                        color: Color.fromARGB(255, 28, 55, 56),
                                      ))),
                                  Expanded(
                                      flex: 6,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FittedBox(
                                            child: Text.rich(TextSpan(
                                                text: 'Distance',
                                                children: [
                                                  TextSpan(text: '\n jjj')
                                                ])),
                                          ),
                                          FittedBox(
                                            child: Text.rich(TextSpan(
                                                text: 'Time',
                                                children: [
                                                  TextSpan(text: '\n jjj')
                                                ])),
                                          ),
                                          FittedBox(
                                            child: Text.rich(TextSpan(
                                                text: 'Price',
                                                children: [
                                                  TextSpan(text: '\n jjj')
                                                ])),
                                          )
                                        ],
                                      ))
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CardDesign(),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 150.h, bottom: 20.h),
                              child: Container(
                                width: double.infinity,
                                child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromARGB(
                                                    255, 255, 255, 255))),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.w.h),
                                      child: Text(
                                        'Confirm Payment',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 28, 55, 56),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
