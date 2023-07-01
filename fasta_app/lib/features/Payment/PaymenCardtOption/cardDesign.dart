
import 'package:fasta_app/features/Payment/NewCardDetails/newCard.dart';
import 'package:fasta_app/features/Provider/checkBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CardDesign extends StatefulWidget {
  CardDesign({super.key});

  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Credit & Debit Cards',
            style: TextStyle(color: Colors.white, fontSize: 20.sp)),
        SizedBox(
          height: 15.h,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Padding(
              padding: EdgeInsets.all(20.w.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.w,
                              color: Color.fromARGB(255, 28, 55, 56)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/CardImage/cardImage1.png",
                            width: 30.w,
                            height: 30.h,
                          ),
                          FittedBox(
                            child: Text.rich(TextSpan(
                                text: 'FCMB Bank',
                                style: TextStyle(fontSize: 13.sp),
                                children: [
                                  TextSpan(
                                    text: '**** **** **** 8395',
                                    style: TextStyle(fontSize: 13.sp),
                                  )
                                ])),
                          ), Consumer<CheckBoxModel>(
                            builder: (context, model, child) {
                              return Checkbox(
                                value: model.isChecked,
                                activeColor: Color.fromARGB(255, 28, 55, 56),
                                onChanged: (bool? value) {
                                  model.setIsChecked(value ?? false);
                                },
                              );
                            },
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.w,
                              color: Color.fromARGB(255, 28, 55, 56)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "images/CardImage/cardImage2.png",
                            width: 40.w,
                            height: 40.h,
                          ),
                          FittedBox(
                            child: Text.rich(TextSpan(
                                text: 'UBA Bank',
                                style: TextStyle(fontSize: 13.sp),
                                children: [
                                  TextSpan(
                                    text: '**** **** **** 8395',
                                    style: TextStyle(fontSize: 13.sp),
                                  )
                                ])),
                          ),

                          // Use Consumer to get the model and update the Checkbox widget
                          Consumer<CheckBoxModel>(
                            builder: (context, model, child) {
                              return Checkbox(
                                value: model.isChecked1,
                                activeColor: Color.fromARGB(255, 28, 55, 56),
                                onChanged: (bool? value) {
                                  model.setIsChecked1(value ?? false);
                                },
                              );
                            },
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 28, 55, 56))),
                        child: Padding(
                          padding: EdgeInsets.all(10.w.h),
                          child: NewCardDetails(),
                        ),
                      ))
                ],
              )),
        )
      ],
    );
  }
}
