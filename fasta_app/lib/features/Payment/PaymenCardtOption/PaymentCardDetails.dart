
import 'package:fasta_app/features/Dialogs/PaymentDailogs/SuccessfullPayment.dart';
import 'package:fasta_app/features/Dialogs/PaymentDailogs/failedPaymendCard.dart';
import 'package:fasta_app/features/GetStarted/PackageDetails/calculateDistance.dart';
import 'package:fasta_app/features/Payment/PaymenCardtOption/cardDesign.dart';
import 'package:fasta_app/features/Payment/paymentOption.dart';
import 'package:fasta_app/features/Provider/checkBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PaymentCardDetails extends StatelessWidget {
  const PaymentCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 55, 56),
        body: Padding(
          padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
          child: Container(
              width: double.infinity,
              height: double.infinity,
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
                                  const PaymenCardtOption(),
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
                    height: 20.w,
                  ),
                  Expanded(
                    child: Container(
                      child: SingleChildScrollView(
                        child: IntrinsicHeight(
                            child: Column(
                          children: [
                            DistanceCalculation(),
                            SizedBox(
                              height: 20.h,
                            ),
                            CardDesign(),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 150.h, bottom: 20.h),
                              child: Container(
                                width: double.infinity,
                                child: TextButton(
                                    onPressed: () {
                                      CheckBoxModel model = Provider.of<CheckBoxModel>(context, listen: false);
                                     if( model.isChecked || model.isChecked1){
                                      showDialog(context: context,
                                barrierColor: Color.fromARGB(172, 11, 22, 22),
                                 builder: (context) {
                                  return SuccessfullDialog();
                                 },);
                                     } else{
                                       showDialog(context: context,
                                barrierColor: Color.fromARGB(172, 11, 22, 22),
                                 builder: (context) {
                                  return FailedPayment();
                                 },);

                                     }
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromARGB(
                                                    255, 255, 255, 255))),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.w.h),
                                      child: Text(
                                        'Confirm Payment',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 28, 55, 56),
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
