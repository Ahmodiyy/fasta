
import 'package:fastaapp/features/Dialogs/PaymentDailogs/cardvalidate.dart';
import 'package:fastaapp/features/Payment/NewCardDetails/monthsAndYear.dart';
import 'package:fastaapp/features/Payment/PaymenCardtOption/PaymentCardDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

class NewCardDetails extends StatefulWidget {
  const NewCardDetails({super.key});

  @override
  State<NewCardDetails> createState() => _NewCardDetailsState();
}

class _NewCardDetailsState extends State<NewCardDetails> {

  var cardValidate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Declare _buildBottomSheet here
        Widget _buildBottomSheet(
          BuildContext context,
          ScrollController scrollController,
          double bottomSheetOffset,
        ) {
          return Material(
            child: Container(
              width: double.infinity,
              color: Color.fromARGB(255, 28, 55, 56),
              child: SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: EdgeInsets.all(20.w.h),
                  child: ListView(
                    controller: scrollController,
                    shrinkWrap: true,
                    // ...
                    children: [
                      Text('Add a new card',
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.sp)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text('Card Number',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextField(
                        controller: cardValidate,
                        style: TextStyle(color: Colors.black,fontSize: 14.sp),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Enter 12 digit card number",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      MonthsAndYear(),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text('Card Holders Name ',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.black,fontSize: 14.sp),
                        decoration: InputDecoration(
                          hintText: "Name of Card",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: TextButton(
                            onPressed: () {
                              var checkCardNumber = cardValidate.text;
                              if( checkCardNumber.isEmpty){
                                showDialog(context: context,
                                barrierColor: Color.fromARGB(172, 11, 22, 22),
                                 builder: (context) {
                                  return PaymentLoading();
                                 },);
                              } else{
                                showDialog(context: context,
                                barrierColor: Color.fromARGB(172, 11, 22, 22),
                                 builder: (context) {
                                  return PaymentCardDetails();
                                 },);
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.all(4.w.h),
                              child: Text(
                                'Save Details',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 28, 55, 56),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }

        showFlexibleBottomSheet(
          minHeight: 0,
          initHeight: 0.8,
          maxHeight: 0.8,
          context: context,
          builder: _buildBottomSheet,
          isExpand: false,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          SizedBox(width: 10.w),
          Text(
            'Add new card',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
