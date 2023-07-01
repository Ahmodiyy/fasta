import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delivery_history extends StatelessWidget {
  const Delivery_history({super.key});

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
                      color: Color.fromARGB(255, 255, 255, 255), size: 40.sp),
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
                'Delivery History',
                style: TextStyle(color: Colors.white, fontSize: 20.sp),
              )),
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
                    ]),
              )
            ],
          ),
        ));
  }
}
