
import 'package:fasta_app/features/Dialogs/setDate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleTime extends StatefulWidget {
  ScheduleTime({super.key});

  @override
  State<ScheduleTime> createState() => _ScheduleTimeState();
}

class _ScheduleTimeState extends State<ScheduleTime> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        content: Container(
          height: 200.h,
          width: 300.w,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Schedule Time',
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: Color.fromARGB(255, 28, 55, 56),
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Color.fromARGB(255, 28, 55, 56),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.access_time_filled,
                                color: Colors.white, size: 25.sp),
                            GestureDetector(
                              onTap: () {
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        setDateandTime(),
                                  ),
                                );
                              },
                              child: Text('Select A Time & Date',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.white,
                                  )),
                            ),
                            PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: PopupMenuItem(
                                      child: TextButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return setDateandTime();
                                              },
                                            );
                                          },
                                          child: Text(
                                            'Date And Time',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 28, 55, 56),
                                                fontSize: 20.sp),
                                          ))),
                                )
                              ],
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 25.sp,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  MaterialButton(
                     minWidth: double.infinity,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(6.w.h),
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              color: Color.fromARGB(255, 28, 55, 56),
                              fontSize: 20.sp),
                        ),
                      ))
                ]),
          ),
        ));
  }
}
