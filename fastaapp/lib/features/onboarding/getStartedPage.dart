import 'package:flutter/material.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
            color: Color.fromARGB(255, 28, 55, 56),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.asset("images/image1.PNG"),
                        ))),
                Expanded(
                    flex: 6,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(35),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Ready To Get Started As A Customer!',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromARGB(255, 253, 253, 253)),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text('Get Started',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 28, 55, 56),
                                            fontWeight: FontWeight.w700)),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
