
import 'package:fasta_app/features/GetStarted/deliveryHistory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drawer_page extends StatelessWidget {
  const Drawer_page({super.key});

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
                    padding:  EdgeInsets.all(15.w.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shell Isaiah',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 28, 55, 56))),
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
                              padding: EdgeInsets.only(top: 15.w.h, bottom: 15.w.h),
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
                    padding:  EdgeInsets.all(20.w.h),
                    child: ListView(children: [
                      ListTile(
                          leading: Icon(Icons.man_outlined,
                              color: Colors.white, size: 30.w.h),
                          title: Text(
                            'Refer a friend',
                            style: TextStyle(color: Colors.white, fontSize: 20.sp),
                          )),
                      ListTile(
                          leading: Icon(Icons.contact_phone_outlined,
                              color: Colors.white, size: 30.w.h),
                          title: Text(
                            'Contact',
                            style: TextStyle(color: Colors.white, fontSize: 20.sp),
                          )),
                      ListTile(
                          leading: Icon(Icons.warning_amber,
                              color: Colors.white, size: 30.w.h),
                          title: Text(
                            'Legal',
                            style: TextStyle(color: Colors.white, fontSize: 20.sp),
                          )),
                       ListTile(
                          leading: Icon(Icons.settings,
                              color: Colors.white, size: 30.w.h),
                          title: Text(
                            'Logout',
                            style: TextStyle(color: Colors.white, fontSize: 20.sp),
                          ))
                    ]),
                  ),
                )),
          ]),
        ));
  }
}
