import 'package:fastaapp/features/Provider/setYeah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MonthsAndYear extends StatefulWidget {
  MonthsAndYear({super.key});

  @override
  State<MonthsAndYear> createState() => _MonthsAndYearState();
}

class _MonthsAndYearState extends State<MonthsAndYear> {
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  List<int> years = [
    2020,
    2021,
    2022,
    2023,
    2024,
    2025,
    2026,
    2027,
    2028,
    2029,
    2030
  ];

// A state variable to store the selected month
  String? selectedMonth;
  bool hideCvv = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Valid Thru',
              style: TextStyle(color: Colors.white, fontSize: 17.sp),
            ),
            SizedBox(height: 7.h,),
            Container(
              // width: ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                child: DropdownButton<String>(
                  value: Provider.of<MonthProvider>(context).selectedMonth,
                  hint: Text("Month"),
                  items: months.map((String month) {
                    return DropdownMenuItem<String>(
                      value: month,
                      child: Text(month),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    Provider.of<MonthProvider>(context, listen: false)
                        .updateMonth(newValue);
                  },
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Text(
              '',
              style: TextStyle(fontSize: 17.sp),
            ),
            SizedBox(height: 7.h,),
            Container(
              // width: 90.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 255, 255, 1)),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w,right: 15.w),
                child: DropdownButton<int>(
                  value: Provider.of<YearProvider>(context).selectedYear,
                  hint: Text("Year"),
                  items: years.map((int year) {
                    return DropdownMenuItem<int>(
                      value: year,
                      child: Text("$year"),
                    );
                  }).toList(),
                  onChanged: (int? selectedYear) {
                    Provider.of<YearProvider>(context, listen: false)
                        .updateYear(selectedYear);
                  },
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cvv',
              style: TextStyle(color: Colors.white, fontSize: 17.sp),
            ),
            SizedBox(height: 7.h,),
            Container(
              width: 90.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 255, 255, 1)),
              child: Padding(
                padding: EdgeInsets.only(left: 5.w,right: 5.w),
                child: TextField(
                  obscureText: hideCvv,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      hintText: "Cvv",
                      hintStyle: TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
                       suffixIcon: IconButton(
                        icon: hideCvv
                            ? const Icon(Icons.visibility, color: Color.fromARGB(188, 0, 0, 0))
                            : const Icon(Icons.visibility_off, color: Color.fromARGB(163, 0, 0, 0)),
                        color: const Color.fromARGB(255, 28, 27, 27),
                        onPressed: () {
                          setState(() {
                            hideCvv = !hideCvv;
                          });
                        },
                      ),
                      ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
