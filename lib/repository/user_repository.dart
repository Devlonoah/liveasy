import 'package:firebase_auth/firebase_auth.dart';

// class FirebaseAuthDataProvider {
//   FirebaseAuth _firebaseAuth;
//   FirebaseAuthDataProvider(
//     this._firebaseAuth,
//   );

//   Future sighInWithPhoneNumber(String phoneNumber) async {
//     var result = await _firebaseAuth.verifyPhoneNumber(
//       phoneNumber: phoneNumber,
//       verificationCompleted: (x) {},
//       verificationFailed: (x) {},
//       codeSent: (stringValue, intValue) {},
//       codeAutoRetrievalTimeout: (x) {},
//     );
//   }
// }

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository(this._firebaseAuth);

  Future usePhoneToSignIn(String phoneNumber) async {
    try {
      return await _firebaseAuth.signInWithPhoneNumber(phoneNumber);
    } catch (e) {}
  }

  Future<void> sendOtp(
      String phoneNumber,
      Duration timeOut,
      PhoneVerificationFailed phoneVerificationFailed,
      PhoneVerificationCompleted phoneVerificationCompleted,
      PhoneCodeSent phoneCodeSent,
      PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout) async {
    _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: timeOut,
        verificationCompleted: phoneVerificationCompleted,
        verificationFailed: phoneVerificationFailed,
        codeSent: phoneCodeSent,
        codeAutoRetrievalTimeout: autoRetrievalTimeout);
  }

  Future<UserCredential> verifyAndLogin(
      String verificationId, String smsCode) async {
    AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    return _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<User?> getUser() async {
    var user = _firebaseAuth.currentUser;
    return user;
  }
}
