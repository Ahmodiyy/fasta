import 'package:firebase_phone_auth_handler/src/auth_handler.dart';
import 'package:flutter/material.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen(FirebasePhoneAuthController controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      );
  }
}