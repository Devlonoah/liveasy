import 'package:bloc/bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';
import '../../data/repository/user_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this.userRepository,
  ) : super(AuthStateInitial());

  final UserRepository userRepository;
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthMovilePhoneChanged) {
      yield* _mapAuthMovilePhoneChangedToState(event);
    }
  }

  Stream<AuthState> _mapAuthMovilePhoneChangedToState(
      AuthMovilePhoneChanged event) async* {
    yield AuthStateInProgress();

    // var result = await userRepository.signInWitMobileNumber(event.input);

    // yield* result.fold((l) async* {
    //   yield AuthStateFailed(l.message);
    // }, (r) async* {
    //   yield AuthStateSuccessful(r);
    // });
  }
}
