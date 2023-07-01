
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../Payment/PaymenCardtOption/PaymentCardDetails.dart';

class PaymentLoading extends StatefulWidget {
  const PaymentLoading({super.key});

  @override
  State<PaymentLoading> createState() => _PaymentLoadingState();
}

class _PaymentLoadingState extends State<PaymentLoading> {

  late Widget _currentDialog;

  @override
  void initState() {
    super.initState();
    // Set the current dialog to the first one
    _currentDialog = _buildFirstDialog();
    // Show the current dialog
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(context: context, builder: (context) => _currentDialog);
    });
  
   Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _currentDialog = CardValidate();
      });
      Navigator.pop(context); // Close the first dialog
      showDialog(context: context, builder: (context) => _currentDialog);
    });
  }

  // A helper method to build the first dialog
  Widget _buildFirstDialog() {
    return AlertDialog(
     backgroundColor: Color.fromARGB(132, 254, 254, 254),
      content: Container(
         height: 250.h,
        child: SpinKitFadingCube(
            color: Color.fromARGB(255, 20, 43, 44),
            size: 50.sp,
          ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PaymentCardDetails();
  }
}

class CardValidate extends StatelessWidget {
  const CardValidate({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 250.h,
        child: Padding(
          padding: EdgeInsets.all(10.w.h),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.cancel_rounded,
                  color: Colors.red,
                  size: 65.sp,
                ),
                Text(
                  'Failed',
                  style: TextStyle(
                      color: Color.fromARGB(255, 28, 55, 56), fontSize: 25.sp),
                ),
                Text(
                  'Wrong card details inputted, please \n try again',
                  style: TextStyle(
                      color: Color.fromARGB(255, 28, 55, 56), fontSize: 20.sp),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6.w.h),
                    child: Text('Done',
                        style: TextStyle(
                            color: Color.fromARGB(255, 28, 55, 56),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600)),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}




