import 'package:fasta_app/features/Mapping/mappingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'PaymenCardtOption/PaymentCardDetails.dart';

class PaymenCardtOption extends StatelessWidget {
  const PaymenCardtOption({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 55, 56),
        body: Padding(
            padding: EdgeInsets.only(left: 14.w,right: 14.w,top: 6.h),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_circle_left_outlined,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 40),
                        onPressed: () {
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const MappingPage(),
                            ),
                          );
                        },
                      ),
                      Text(
                        'Payment',
                        style: TextStyle(color: Colors.white, fontSize: 22.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select your paymet option',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20.sp)),
                        SizedBox(
                          height: 20.h,
                        ),
                        // Use a custom widget to create a reusable TextButton
                        CustomTextButton(
                          text: 'Pay with Card',
                          onPressed: () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const PaymentCardDetails(),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                       CustomTextButton(
                          text: 'Pay on Delivery (Cash)',
                          onPressed: () {
                            Navigator.pop(context, 'showDialog');
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.w.h),
            child: Text(text,
                style: TextStyle(
                    color: Color.fromARGB(255, 28, 55, 56),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500)),
          )),
    );
  }
}
