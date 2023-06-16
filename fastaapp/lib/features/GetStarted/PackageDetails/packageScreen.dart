import 'package:fastaapp/features/GetStarted/PackageDetails/InputPackageDetails.dart';
import 'package:fastaapp/features/GetStarted/PackageDetails/calculateDistance.dart';
import 'package:fastaapp/features/GetStarted/PackageDetails/inputLocationDetails.dart';
import 'package:fastaapp/features/GetStarted/PackageDetails/schedule.dart';
import 'package:flutter/material.dart';

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
                  icon: const Icon(Icons.arrow_circle_left_outlined,
                      color: Color.fromARGB(255, 255, 255, 255), size: 40),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
          title: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Send A Package',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        ),
        body: SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(20),
      child: Column( 
        children: [
       InputPackageDetails (),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Input_location_details(),
        ),
        DistanceCalculation(),
       Schedulebuttons(),
      ],)),
        ),
      );
  }
}