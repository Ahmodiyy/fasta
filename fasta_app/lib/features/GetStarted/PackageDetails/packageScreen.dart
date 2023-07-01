
import 'package:fasta_app/features/GetStarted/PackageDetails/calculateDistance.dart';
import 'package:fasta_app/features/GetStarted/PackageDetails/inputLocationDetails.dart';
import 'package:fasta_app/features/GetStarted/PackageDetails/inputPackageDetails.dart';
import 'package:fasta_app/features/GetStarted/PackageDetails/schedule.dart';
import 'package:fasta_app/features/GetStarted/sendPackagePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Packagedetails extends StatelessWidget {
  const Packagedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 28, 55, 56),
        leading: Builder(
          builder: (context) => Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_circle_left_outlined,
                    color: Color.fromARGB(255, 255, 255, 255), size: 35.sp),
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const SendpackagesPage(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Send A Package',
              style: TextStyle(color: Colors.white, fontSize: 20.sp),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                InputPackageDetails(),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Input_location_details(),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: DistanceCalculation(),
                  ),
                ),
                Schedulebuttons(),
              ],
            )),
      ),
    );
  }
}
