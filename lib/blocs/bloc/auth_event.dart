abstract class AuthEvent {}

class AuthWithOtp extends AuthEvent {
  final String phoneNumber;

  AuthWithOtp(this.phoneNumber);
}
