
import 'package:fasta_app/features/Dialogs/scheduleDialog.dart';
import 'package:fasta_app/features/Mapping/mappingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Schedulebuttons extends StatelessWidget {
  const Schedulebuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(children: [
          Expanded(
              flex: 2,
              child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return ScheduleTime();
                          },
                        );
                      },
                      child: Text('Schedule',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp)),
                    ),
                  ))),
          Expanded(
            flex: 3,
            child: TextButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const MappingPage(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Confirm',
                    style: TextStyle(
                        color: Color.fromARGB(255, 28, 55, 56),
                        fontSize: 20.sp)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
