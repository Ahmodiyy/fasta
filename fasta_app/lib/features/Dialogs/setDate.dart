
import 'package:fasta_app/features/Provider/passDateandTime.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:date_time_picker/date_time_picker.dart';

class setDateandTime extends StatefulWidget {
  setDateandTime({
    super.key,
  });

  @override
  State<setDateandTime> createState() => _setDateState();
}

class _setDateState extends State<setDateandTime> {
  String _selectedDateTime = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      content: Container(
          height: 200.h,
          width: 300.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 28, 55, 56),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: DateTimePicker(
                    type: DateTimePickerType.dateTimeSeparate,
                    dateMask: 'd MMM, yyyy',
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    icon: Icon(Icons.event, color: Colors.white, size: 25.sp),
                    style: TextStyle(color: Colors.white),
                    dateLabelText: 'Date',
                    timeLabelText: "Hour",
                    // Use the onChanged callback to update the selected date and time value
                    onChanged: (val) => setState(() => _selectedDateTime = val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Provider.of<DateAndTime>(context, listen: false)
                          .updateDateTime(_selectedDateTime);
                    },
                    child: Text(
                      'Ok',
                      style: TextStyle(
                          fontSize: 23.sp,
                          color: Color.fromARGB(255, 28, 55, 56),
                          fontWeight: FontWeight.w800),
                    )),
              ),
            ],
          )),
    );
  }
}
