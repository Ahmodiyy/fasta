import 'package:fasta_app/features/GetStarted/HistoryTabs/Ongoing.dart';
import 'package:fasta_app/features/GetStarted/HistoryTabs/complete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delivery_history extends StatefulWidget {
  const Delivery_history({super.key});

  @override
  State<Delivery_history> createState() => _Delivery_historyState();
}

class _Delivery_historyState extends State<Delivery_history> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 55, 56),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 28, 55, 56),
          leading: Builder(
            builder: (context) => Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_circle_left_outlined,
                        color: Color.fromARGB(255, 255, 255, 255), size: 40.sp),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(right: 10.w,top: 8.h),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Delivery History',
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                )),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Color.fromRGBO(130, 192, 154, 1),
                      borderRadius: BorderRadius.circular(13.w.h),
                    ),
                    tabs: [
                      Tab(
                          child: Text(
                        'Ongoing',
                        style: TextStyle(fontSize: 17.sp),
                      )),
                      Tab(
                        child: Text(
                          'Completed',
                          style: TextStyle(fontSize: 17.sp),
                        ),
                      )
                    ],
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    }),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 25.h,left: 20.w,right: 20.w),
                  child: TabBarView(children: [
                    OngoingTab(),
                    CompleteTab(),
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
