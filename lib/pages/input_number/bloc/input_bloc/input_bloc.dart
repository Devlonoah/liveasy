import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:liveasy_assignment/data/repository/user_repository.dart';

part 'input_event.dart';
part 'input_state.dart';

class InputBloc extends Bloc<InputEvent, InputState> {
  InputBloc(
    // this._userRepository,
    this._firebaseAuth,
  ) : super(InputState.initialState());
  // final UserRepository _userRepository;
  final FirebaseAuth _firebaseAuth;
  @override
  Stream<InputState> mapEventToState(InputEvent event) async* {
    if (event is InputChanged) {
      yield state.copyWith(
        countryCode: event.countryCode,
        mobileNumber: event.mobileNumber,
      );
    }

    if (event is ContinueButtonPressed) {
      yield state.copyWith(isSubmitting: true);

      await _firebaseAuth.verifyPhoneNumber(
          phoneNumber: "+2341234567890",
          timeout: const Duration(seconds: 60),
          verificationCompleted: (x) =>
              add(VerificationCompleted(phoneAuthCredential: x)),
          verificationFailed: (X) => add(
                VerificationFailed(X.message!),
              ),
          codeSent: (x, c) => add(event),
          // ignore: avoid_print
          codeAutoRetrievalTimeout: (x) => print('code auto retrieval $x'));
    }

    if (event is VerificationCompleted) {
      print('verification complete');
    }

    if (event is VerificationFailed) {
      print('verification failed');
    }

    if (event is CodeSent) {
      print('code sent ${event.token} ${event.id}');
    }
  }
}
