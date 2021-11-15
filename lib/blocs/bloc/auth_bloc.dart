import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:liveasy_assignment/blocs/bloc/auth_event.dart';
import 'package:liveasy_assignment/blocs/bloc/auth_state.dart';
import 'package:liveasy_assignment/repository/user_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository _userRepository;
  AuthBloc(this._userRepository, this.firebaseAuth) : super(AuthInitial());

  FirebaseAuth firebaseAuth;
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthWithOtp) {
      var result = await firebaseAuth.signInWithPhoneNumber(event.phoneNumber);

//  await _userRepository.sendOtp(
//           event.phoneNumber,
//           const Duration(seconds: 6),
//           (error) {},
//           (phoneAuthCredential) {},
//           (verificationId, forceResendingToken) {},
//           (verificationId) {});
    }
  }
}
