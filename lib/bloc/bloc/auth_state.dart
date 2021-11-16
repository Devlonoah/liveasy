import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {
  // AuthState(
  //     {this.showErrorMessage = false,
  //     this.isSubmitting = false,
  //     this.phonumber = '',
  //     this.authFailureOrSuccess});

  // final bool showErrorMessage;
  // final bool isSubmitting;
  // final String phonumber;
  // final Either<AuthFailure, ConfirmationResult>? authFailureOrSuccess;

  // AuthState copyWith(
  //     {required bool showErrorMessage,
  //     required bool isSubmitting,
  //     required String phonumber,
  //     required Either<AuthFailure, ConfirmationResult> authFailureOrSuccess}) {
  //   return AuthState(
  //     showErrorMessage: showErrorMessage,
  //     isSubmitting: false,
  //     phonumber: phonumber,
  //     authFailureOrSuccess: authFailureOrSuccess,
  //   );
  // }

}

class AuthStateInitial extends AuthState {}

class AuthStateInProgress extends AuthState {}

class AuthStateSuccessful extends AuthState {
  final ConfirmationResult result;

  AuthStateSuccessful(this.result);
}

class AuthStateFailed extends AuthState {
  final String errorMessage;

  AuthStateFailed(this.errorMessage);
}
