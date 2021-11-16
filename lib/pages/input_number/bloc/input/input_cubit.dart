import 'package:bloc/bloc.dart';
import 'package:liveasy_assignment/data/repository/user_repository.dart';

part 'input_state.dart';

class InputCubit extends Cubit<InputState> {
  InputCubit(this._userRepository) : super(InputState.initialState());
  final UserRepository _userRepository;

  void countryCodeChange(String countryCode) {
    emit(state.copyWith(
      countryCode: countryCode,
    ));
  }

  void mobileNumberChange(String mobileNumber) {
    emit(state.copyWith(
      mobileNumber: mobileNumber,
    ));
  }

  void continueButtonPressed() async {
    emit(state.copyWith(
      isSubmitting: true,
      failure: false,
    ));

    var response = await _userRepository.signInWitMobileNumber(
        input: state.mobileNumber,
        verificationCompleted: (x) {
          print(x);
        },
        verificationFailed: (X) {
          print("error occured :: $X");
          emit(state.copyWith(failure: true));
        },
        codeSent: (x, c) {},
        codeAutoRetrievalTimeout: (x) {});

    response.fold(
      (l) => emit(state.copyWith(
        isSubmitting: false,
        failure: true,
        errorMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(),
      ),
    );
  }
}
