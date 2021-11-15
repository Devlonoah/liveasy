import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

// abstract class AuthFailure with _$AuthFailure {
//   const factory AuthFailure.authVerificationFailed() = AuthVerificationFailed;
//   const factory AuthFailure.phoneverificationFailed() = PhoneVerificationFailed;
// }

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.authenticationException() = AuthenticationFailed;
  const factory AuthFailure.phoneVerificationException() =
      PhoneVerificationFailed;

  const factory AuthFailure.networkException() = NetworkFailure;
}
