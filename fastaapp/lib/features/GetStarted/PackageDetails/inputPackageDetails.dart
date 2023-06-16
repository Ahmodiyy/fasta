import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double kPadding = 20.0;
const Icon myIcon = Icon(Icons.gif_box, color: Color.fromARGB(255, 28, 55, 56),size: 40,);
TextStyle myTextStyle = TextStyle(fontSize: ScreenUtil().setSp(20), color: Colors.white);
TextStyle myLabelStyle = TextStyle(color: Color.fromARGB(255, 28, 55, 56), fontSize: ScreenUtil().setSp(20),fontWeight: FontWeight.w400);

// reused textfield
Widget buildTextField(String label, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: myLabelStyle),
      TextField(
        // controller: TextEditingController(),
        decoration: InputDecoration(
          prefixIcon: myIcon,
          border: UnderlineInputBorder(),
          hintText: hint,
        ),
      ),
    ],
  );
}


class InputPackageDetails extends StatelessWidget {
  const InputPackageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Input package details", style: myTextStyle),
        Padding(
          padding: EdgeInsets.only(top: kPadding),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(kPadding),
              child: Column( 
                children: [
                buildTextField('Approx. Size', 'Approx. size of the package'),
                SizedBox(height: 10,),
                buildTextField('Approx. Weight', 'Approx. weight of the package'),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
