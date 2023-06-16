import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


const double kPadding = 20.0;
const Icon myIcon = Icon(Icons.gif_box, color: Color.fromARGB(255, 28, 55, 56),size: 40,);
TextStyle myTextStyle = TextStyle(fontSize: ScreenUtil().setSp(20), color: Colors.white);
TextStyle myLabelStyle = TextStyle(color: Color.fromARGB(255, 28, 55, 56), fontSize: ScreenUtil().setSp(20),fontWeight: FontWeight.w400);
 final TextEditingController pickupTextController = TextEditingController();
  final TextEditingController dropoffTextController = TextEditingController();


// reused textfield
Widget buildTextField(String label, String hint, TextEditingController pickupTextController) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: myLabelStyle),
      TextField(
        decoration: InputDecoration(
          prefixIcon: myIcon,
          border: UnderlineInputBorder(),
          hintText: hint,
        ),
      ),
    ],
  );
}


class Input_location_details extends StatelessWidget {
  const Input_location_details({Key? key}) : super(key: key);

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
                buildTextField('Pickup', 'Pickup location for the package',pickupTextController),
                SizedBox(height: 10,),
                buildTextField('Drop-off', 'Drop-off location for the package',dropoffTextController),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}