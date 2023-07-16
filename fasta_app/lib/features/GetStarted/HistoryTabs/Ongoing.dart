import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OngoingTab extends StatefulWidget {
  OngoingTab({super.key});

  @override
  State<OngoingTab> createState() => _OngoingTabState();
}

class _OngoingTabState extends State<OngoingTab> {
  var userslist = FirebaseFirestore.instance.collection('client').snapshots();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: userslist,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          var daTa = snapshot.data!.docs;
          return ListView.builder(
              itemCount: daTa.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(15.sp),
                      child: ListTile(
                        title: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Icon(Icons.person, size: 35.sp)),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(daTa[index]['userName'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 28, 55, 56),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text('${daTa[index]['getDateAndTime']}',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 28, 55, 56),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: 100.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.message_rounded,
                                          size: 34.sp,
                                          color:
                                              Color.fromARGB(255, 28, 55, 56)),
                                      Icon(Icons.call,
                                          size: 34.sp,
                                          color:
                                              Color.fromARGB(255, 28, 55, 56)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Container(
                            width: double.infinity,
                            child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Track Ongoing Progress',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                        color:
                                            Color.fromARGB(255, 47, 110, 112)),
                                  ),
                                )),
                          )
                        ]),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
