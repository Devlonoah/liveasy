part of 'input_bloc.dart';

class InputState {
  final String countryCode;
  final String mobileNumber;
  final bool isSubmitting;
  final bool isSuccesful;
  final String errorMessage;
  final bool failure;
  final bool otpSent;
  final String otp;

  InputState(
      {required this.countryCode,
      required this.mobileNumber,
      required this.isSubmitting,
      required this.isSuccesful,
      required this.errorMessage,
      required this.failure,
      required this.otpSent,
      required this.otp});

  static InputState initialState() {
    return InputState(
        countryCode: '+234',
        mobileNumber: '00',
        isSubmitting: false,
        isSuccesful: false,
        errorMessage: '',
        failure: false,
        otpSent: false,
        otp: '');
  }

  InputState copyWith(
      {String? countryCode,
      String? mobileNumber,
      bool? isSubmitting,
      bool? isSuccesful,
      String? errorMessage,
      bool? failure,
      bool? otpSent,
      String? otp}) {
    return InputState(
      countryCode: countryCode ?? this.countryCode,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccesful: isSuccesful ?? this.isSuccesful,
      errorMessage: errorMessage ?? this.errorMessage,
      failure: failure ?? this.failure,
      otpSent: otpSent ?? this.otpSent,
      otp: otp ?? this.otp,
    );
  }
}
