import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fasta_app/features/Dialogs/sendPackage.dart';
// import 'package:fasta_app/features/Provider/OTP/getPhoneNunberandEmail.dart';
import 'package:fasta_app/features/Provider/OTP/username.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

class UserForm extends StatefulWidget {
  UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  var username = TextEditingController();

  var date = '';

  // to send data on firebase cloud
  CollectionReference users = FirebaseFirestore.instance.collection('client');
  // to check for internet connection object

  Future<void> addUser() async {
    try {
      var checkinputfield = username.text;

      if (checkinputfield.isEmpty) {
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            backgroundColor: const Color.fromARGB(255, 219, 219, 219),
            content: Text("User name is required",
                style: TextStyle(fontSize: 17.sp)),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                  child: Text(
                    'Okey',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        );
      } else {
        await users.add({
          'userName': username.text,
          'getDateAndTime': date,
        });
        Provider.of<UserName>(context, listen: false)
            .updateUserName(username.text);
        showDialog(
          context: context,
          builder: (context) {
            return SendpackageAnimation();
          },
        );
        print("User Added");
      }
    } catch (error) {
      print("Failed to add user: $error");
    }
  }

  Future<void> checkInternetConnection(BuildContext context) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      ScaffoldMessenger.of(context).showMaterialBanner(
        MaterialBanner(
          backgroundColor: const Color.fromARGB(255, 219, 219, 219),
          content: FittedBox(
            child: Text(
              "Failed to continue please check your internet connection",
              style: TextStyle(fontSize: 17.sp),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              },
              child: Text(
                'Okey',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
    username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 55, 56),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 80.h),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What is your name ?',
                style: TextStyle(color: Colors.white, fontSize: 20.sp)),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              textAlign: TextAlign.start,
              controller: username,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Full Name',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.sp),
                      ),
                      borderSide: BorderSide(color: Colors.white)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10.sp)))),
              // get the current time user type on this field
              onChanged: (value) {
                var datetime = DateTime.now();
                date =
                    '${datetime.day}, ${datetime.month}, ${datetime.year}, ${datetime.hour}:${datetime.minute}:${datetime.second}';
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.sp))),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(3.sp),
                child: MaterialButton(
                  onPressed: () async {
                    await checkInternetConnection(context);
                    await addUser();
                  },
                  child: Text(
                    'Complete',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Color.fromARGB(255, 28, 55, 56),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )),
            ),
          ],
        )),
      ),
    );
  }
}
