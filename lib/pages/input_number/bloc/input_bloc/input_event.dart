part of 'input_bloc.dart';

@immutable
abstract class InputEvent {}

class InputChanged extends InputEvent {
  final String countryCode;
  final String mobileNumber;

  InputChanged(this.countryCode, this.mobileNumber);
}

class ContinueButtonPressed extends InputEvent {
  final String mobileNumber;
  ContinueButtonPressed(
    this.mobileNumber,
  );
}

class VerificationCompleted extends InputEvent {
  final PhoneAuthCredential phoneAuthCredential;
  VerificationCompleted({
    required this.phoneAuthCredential,
  });
}

class CodeSent extends InputEvent {
  final String token;
  final int id;
  CodeSent({
    required this.token,
    required this.id,
  });
}

class VerificationFailed extends InputEvent {
  final String message;
  VerificationFailed(
    this.message,
  );
}
