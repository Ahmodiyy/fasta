import 'package:fastaapp/features/GetStarted/PackageDetails/packageScreen.dart';
import 'package:fastaapp/features/GetStarted/drawerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendpackagesPage extends StatelessWidget {
  const SendpackagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: double.infinity,
          leading: Builder(
            builder: (context) => Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.menu,
                      color: Color.fromARGB(255, 28, 55, 56), size: 40),
                  onPressed: () {
                    // Open the drawer
                    Navigator.of(context).push(pageAnimation());
                  },
                ),
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Send Packages With Ziklogistics',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 28, 55, 56),
                                    fontSize: 30.sp,
                                    
                                    fontWeight: FontWeight.bold)),
                            Text(
                                'Get it delivered in the time it takes to drive there!',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 28, 55, 56),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500))
                          ]),
                    ),
                  )),
              Expanded(
                  flex: 8,
                  child: Container(
                    color: Color.fromARGB(255, 28, 55, 56),
                    // Wrap the Column with a SingleChildScrollView widget
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Image.asset(
                          "images/getStartedImages/image1.PNG",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: EdgeInsets.all(35),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 253, 253, 253)),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push<void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const Packagedetails(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text('Send A Package',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color:
                                            Color.fromARGB(255, 28, 55, 56),
                                        fontWeight: FontWeight.w700)),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  )),
            ],
          ),
        ));
  }
}


// page animation
Route pageAnimation() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Drawer_page(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(-1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
