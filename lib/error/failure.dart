import 'package:flutter/foundation.dart';

import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.authenticationFailed(
          [@Default('Authentication failed') String message]) =
      AuthenticationFailedFailure;

  const factory AuthFailure.verificationFailed(
          [@Default('Authentication failed') String message]) =
      VerificationFailedFailure;

  const factory AuthFailure.networkFailure(
      [@Default('Check your connection') String message]) = NetworkFailure;

  const factory AuthFailure.invalidPhoneNumberFailure(
          [@Default('Invalid phone number') String message]) =
      InvalidPhoneNumberFailure;

  const factory AuthFailure.generalFailure(
      [@Default('error occured') String message]) = GeneralFailure;
}
