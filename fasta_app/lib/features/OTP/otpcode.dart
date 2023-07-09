import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key, required this.otpController}) : super(key: key);
  final TextEditingController otpController;
  // var codeInput;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: otpController,
      keyboardType: TextInputType.number,
      // style: Theme.of(context).textTheme.headlineMedium,
      textAlign: TextAlign.start,
      inputFormatters: [
        LengthLimitingTextInputFormatter(4),
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.sp),
              ),
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20.sp)))),
      onSaved: (value) {},
    );
  }
}




//  OtpTextField(
//           onCodeChanged: (String code) {
//             codeInput = code;
//             if (code.length == 1) {
//               FocusScope.of(context).previousFocus();
//             }
//             if (code.isEmpty) {
//               FocusScope.of(context).nextFocus();
//             }
//           },
//           numberOfFields: 4,
//           borderColor: Color(0xFF512DA8),
//           fillColor: Colors.white,
//           filled: true,
//           fieldWidth: 50.w,
//           showFieldAsBox: true,
//         )
