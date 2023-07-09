import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
import 'package:flutter/widgets.dart';


class MyFirebaseAuth with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber(
      {required TextEditingController getPhoneNumber}) async {
    String phoneNumber = getPhoneNumber.text;
    String formattedPhoneNumber =
        '+234' + phoneNumber.replaceFirst(RegExp(r'^0+'), '');

    await _auth.verifyPhoneNumber(
      phoneNumber: formattedPhoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    notifyListeners();
  }
}

final myFirebaseAuth = MyFirebaseAuth();


// class MyFirebaseAuth {
//     FirebaseAuth auth = FirebaseAuth.instance;

//    Future<void> verifyPhoneNumber(
//       {required TextEditingController getPhoneNumber}) async {
//     String phoneNumber = getPhoneNumber.text;
//     String formattedPhoneNumber =
//         '+234${phoneNumber.replaceFirst(RegExp(r'^0+'), '')}';

//     await auth.verifyPhoneNumber(
//       phoneNumber: formattedPhoneNumber,
//       verificationCompleted: (PhoneAuthCredential credential) {},
//       verificationFailed: (FirebaseAuthException e) {},
//       codeSent: (String verificationId, int? resendToken) {},
//       codeAutoRetrievalTimeout: (String verificationId) {},
//     );
//   }
// }


