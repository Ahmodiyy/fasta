
import 'package:fasta_app/features/onboarding/threePageIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp( Welcompage());

class Welcompage extends StatelessWidget {
   Welcompage({super.key});

  @override
  Widget build(BuildContext context) {
      void threePageindicator(){
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThreePage()),
    );
  }
  
   return Scaffold(
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Container(
            color: Color.fromARGB(255, 28, 55, 56),
            child: Column(children: [
              Expanded(child: Container(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset("images/onboardingImages/image1.PNG"),
                    ))),
              Expanded(
                  child: Center(
                child: Padding(
                  padding: EdgeInsets.all(35),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                    Text('Hi, welcome onboard!',style: TextStyle(
                      color: Colors.white,fontSize: ScreenUtil().setSp(30),fontWeight: FontWeight.bold)),
                    Align(alignment: Alignment.bottomCenter,
                    child: Column(children: [
                      Container(width: double.infinity,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 253, 253, 253)),
                        child: MaterialButton(onPressed: threePageindicator,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('Sign up as a Customer',
                          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 28, 55, 56),
                          fontWeight: FontWeight.w700)),
                        ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(width: double.infinity,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 253, 253, 253)),
                        child: MaterialButton(onPressed: threePageindicator,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('Sign up as a Dispatched',
                          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 28, 55, 56),
                          fontWeight: FontWeight.w700)),
                        ),
                        ),
                      ),
                    ]),)
                  ],
                  ),
                ),
              ))
            ]),
          )),
    );
  }
}
