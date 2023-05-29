import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                flex: 5,
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
            flex: 5,
            child: Center(
              child: Placeholder(),
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
            flex: 5,
            child: Center(
              child: Placeholder(),
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
   return Container(
        child: Column(
      children: [
        Expanded(
            flex: 5,
            child: Center(
              child: Placeholder(),
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
    ));
  }
}
