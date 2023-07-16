
import 'package:fasta_app/features/Dialogs/loadPaymentPage.dart';
import 'package:fasta_app/features/GetStarted/PackageDetails/packageScreen.dart';
import 'package:fasta_app/features/Mapping/map.dart';
import 'package:fasta_app/features/Provider/passDateandTime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../GetStarted/PackageDetails/calculateDistance.dart';

class MappingPage extends StatelessWidget {
  const MappingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Container(
            // color: Colors.red,
            child: Stack(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.w.h),
                    child: IconButton(
                      icon: Icon(Icons.arrow_circle_left_outlined,
                          color: Color.fromARGB(255, 28, 55, 56), size: 35.sp),
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const Packagedetails(),
                          ),
                        );
                      },
                    ),
                  )),
                  MapScreen (),
              Placeholder()
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 350.sp),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 28, 55, 56),
              ),
              child: Padding(
                  padding: EdgeInsets.all(15.w.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Searching for dispatcher',
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.sp)),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(5.w.h),
                          child: Column(
                            children: [
                              DistanceCalculation(),
                              Padding(
                                padding: EdgeInsets.all(1.w.h),
                                child: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Card(
                                    color: Color.fromARGB(255, 28, 55, 56),
                                    child: ListTile(
                                      leading: Icon(Icons.access_time_filled,
                                          color: Colors.white, size: 30.sp),
                                      title: Consumer<DateAndTime>(
                                        builder: (context, model, child) {
                                          return Center(
                                            child: Text(model.dateTime,
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: Colors.white)),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.white,
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return LoadPaymentPAge();
                                },
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.all(3.w.h),
                              child: Text('Confirm',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 28, 55, 56),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700)),
                            )),
                      )
                    ],
                  )),
            ),
          )
        ]),
      )),
    );
  }
}
