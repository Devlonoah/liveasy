part of 'input_cubit.dart';

class InputState {
  final String countryCode;
  final String mobileNumber;
  final bool isSubmitting;
  final bool isSuccesful;
  final String errorMessage;
  final bool failure;

  InputState({
    required this.countryCode,
    required this.mobileNumber,
    required this.isSubmitting,
    required this.isSuccesful,
    required this.errorMessage,
    required this.failure,
  });

  static InputState initialState() {
    return InputState(
      countryCode: '+00',
      mobileNumber: '00',
      isSubmitting: false,
      isSuccesful: false,
      errorMessage: '',
      failure: false,
    );
  }

  InputState copyWith(
      {String? countryCode,
      String? mobileNumber,
      bool? isSubmitting,
      bool? isSuccesful,
      String? errorMessage,
      bool? failure}) {
    return InputState(
        countryCode: countryCode ?? this.countryCode,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccesful: isSuccesful ?? this.isSuccesful,
        errorMessage: errorMessage ?? this.errorMessage,
        failure: failure ?? this.failure);
  }
}
