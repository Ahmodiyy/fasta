import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'getStartedPage.dart';

class ThreePage extends StatelessWidget {
  ThreePage({super.key});

  final PageController pageIndicator = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            color: Color.fromARGB(255, 28, 55, 56),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                flex: 7,
                child: PageView(
                  controller: pageIndicator,
                  children: [
                    FirstPageIndicator(),
                    SecondPageIndicator(),
                    ThirdPageIndicator()
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SmoothPageIndicator(
                  controller: pageIndicator,
                  count: 3,
                  effect: JumpingDotEffect(
                      verticalOffset: 10, activeDotColor: Colors.black),
                ),
              ),
            ]),
          )),
    );
  }
}

class FirstPageIndicator extends StatelessWidget {
  const FirstPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Expanded(
            flex: 6,
            child: Center(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("images/onboardingImages/image2.PNG")),
            )),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Make A Request',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                Text(
                  'Lorem ipsum dolor sit amet,\n'
                  'consectetur adipisicing elit.',
                  textAlign: TextAlign.center, // align the text to the center
                  style: TextStyle(
                      fontSize: 18, color: Colors.white), // set the font size
                ),
              ],
            )),
          ),
        )
      ],
    ));
  }
}

class SecondPageIndicator extends StatelessWidget {
  SecondPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Expanded(
            flex: 6,
            child: Center(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("images/onboardingImages/image3.PNG")),
            )),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Confirm Your Dispatcher',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
                Text(
                  'Lorem ipsum dolor sit amet,\n'
                  'consectetur adipisicing elit.',
                  textAlign: TextAlign.center, // align the text to the center
                  style: TextStyle(
                      fontSize: 18, color: Colors.white), // set the font size
                ),
              ],
            )),
          ),
        )
      ],
    ));
  }
}

class ThirdPageIndicator extends StatelessWidget {
  ThirdPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      appBar: AppBar(leadingWidth: double.infinity,
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      leading: Align(alignment: Alignment.centerRight,
      child: IconButton(
              icon: Icon(Icons.arrow_forward),
              color: Colors.white,
              iconSize: 40,
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Getstarted(),
                  ),
                );
              },
            ),),),

      body: SizedBox(
         width: double.infinity,
          height: double.infinity,
        child: Container(
            child: Column(
          children: [
            
            Expanded(
                flex: 4,
                child: Center(
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset("images/onboardingImages/image4.PNG")),
                )),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Track Your Delivery',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                    Text(
                      'Lorem ipsum dolor sit amet,\n'
                      'consectetur adipisicing elit.',
                      textAlign: TextAlign.center, // align the text to the center
                      style: TextStyle(
                          fontSize: 18, color: Colors.white), // set the font size
                    ),
                  ],
                )),
              ),
            )
          ],
        )),
      ),
    );
  }
}
