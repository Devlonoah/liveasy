abstract class AuthEvent {}

class AuthMovilePhoneChanged extends AuthEvent {
  final String input;

  AuthMovilePhoneChanged(this.input);
}

class AuthContinuePressed extends AuthEvent {}
