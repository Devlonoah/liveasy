import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth? _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

  Future<ConfirmationResult?> signInWithPhone(String phoneNumber) async {
    return await _firebaseAuth?.signInWithPhoneNumber(phoneNumber);
  }
}
