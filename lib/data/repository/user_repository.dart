import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../error/failure.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository(this._firebaseAuth);

  Future<Either<AuthFailure, void>> signInWitMobileNumber(
      {String? input,
      void Function(FirebaseAuthException)? verificationFailed,
      void Function(PhoneAuthCredential)? verificationCompleted,
      void Function(String, int?)? codeSent,
      void Function(String)? codeAutoRetrievalTimeout}) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        timeout: const Duration(seconds: 60),
        phoneNumber: input!,
        verificationCompleted: verificationCompleted!,
        verificationFailed: verificationFailed!,
        codeSent: codeSent!,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout!,
      );
      return right(null);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'Invalid Phonenumber') {
        return const Left(AuthFailure.invalidPhoneNumberFailure());
      } else {
        return const Left(AuthFailure.generalFailure());
      }
    } catch (e) {
      return const Left(AuthFailure.generalFailure());
    }
  }

  Future<Either<AuthFailure, UserCredential>> signInWithOtp(
      ConfirmationResult input, String otpCode) async {
    try {
      var result = await input.confirm(otpCode);

      return Right(result);
    } on FirebaseAuthException catch (e) {
      return const Left(AuthFailure.authenticationFailed());
    } on SocketException catch (e) {
      return const Left(AuthFailure.networkFailure());
    } catch (e) {
      return const Left(AuthFailure.generalFailure());
    }
  }
}
