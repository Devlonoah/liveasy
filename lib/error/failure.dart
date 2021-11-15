import 'package:flutter/foundation.dart';

import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.authenticationFailed() = AuthenticationFailed;

  const factory AuthFailure.phoneVerificationFailed() = PhoneVerificationFailed;

  const factory AuthFailure.networkFailure() = NetworkFailure;
}
