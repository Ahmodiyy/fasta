import 'package:flutter/material.dart';

class DistanceCalculation extends StatelessWidget {
  const DistanceCalculation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0), // set border radius here
  ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              Expanded( flex: 1,
                child: Center(child: Icon(Icons.car_crash_sharp,size: 50,color: Color.fromARGB(255, 28, 55, 56),))),
              Expanded( flex: 6,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FittedBox(
                      child: Text.rich(TextSpan(text: 'Distance',
                      children: [
                        TextSpan(text: '\n jjj')
                      ])),
                    ),
                    FittedBox(
                      child: Text.rich(TextSpan(text: 'Time',
                      children: [
                        TextSpan(text: '\n jjj')
                      ])),
                    ),
                     FittedBox(
                      child: Text.rich(TextSpan(text: 'Price',
                      children: [
                        TextSpan(text: '\n jjj')
                      ])),
                    )
                ],))
            ]),
          ),
        ),
      ),
    );
  }
}