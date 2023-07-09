import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserForm extends StatelessWidget {
 UserForm({super.key});
  var username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What is your name ?',
                style: TextStyle(color: Colors.white, fontSize: 20.sp)),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              textAlign: TextAlign.start,
              controller: username,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Full Name',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.sp),
                      ),
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10.sp)))),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.sp))),
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Text(
                      'Complete',
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Color.fromARGB(255, 28, 55, 56),
                          fontWeight: FontWeight.w700),
                    )),
              ),
            )
          ],
        )),
      ),
    );
  }
}
