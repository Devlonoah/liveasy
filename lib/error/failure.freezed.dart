// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  AuthenticationFailedFailure authenticationFailed(
      [String message = 'Authentication failed']) {
    return AuthenticationFailedFailure(
      message,
    );
  }

  VerificationFailedFailure verificationFailed(
      [String message = 'Authentication failed']) {
    return VerificationFailedFailure(
      message,
    );
  }

  NetworkFailure networkFailure([String message = 'Check your connection']) {
    return NetworkFailure(
      message,
    );
  }

  InvalidPhoneNumberFailure invalidPhoneNumberFailure(
      [String message = 'Invalid phone number']) {
    return InvalidPhoneNumberFailure(
      message,
    );
  }

  GeneralFailure generalFailure([String message = 'error occured']) {
    return GeneralFailure(
      message,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) authenticationFailed,
    required TResult Function(String message) verificationFailed,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) invalidPhoneNumberFailure,
    required TResult Function(String message) generalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailedFailure value)
        authenticationFailed,
    required TResult Function(VerificationFailedFailure value)
        verificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidPhoneNumberFailure value)
        invalidPhoneNumberFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $AuthenticationFailedFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $AuthenticationFailedFailureCopyWith(
          AuthenticationFailedFailure value,
          $Res Function(AuthenticationFailedFailure) then) =
      _$AuthenticationFailedFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$AuthenticationFailedFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthenticationFailedFailureCopyWith<$Res> {
  _$AuthenticationFailedFailureCopyWithImpl(AuthenticationFailedFailure _value,
      $Res Function(AuthenticationFailedFailure) _then)
      : super(_value, (v) => _then(v as AuthenticationFailedFailure));

  @override
  AuthenticationFailedFailure get _value =>
      super._value as AuthenticationFailedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthenticationFailedFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationFailedFailure
    with DiagnosticableTreeMixin
    implements AuthenticationFailedFailure {
  const _$AuthenticationFailedFailure([this.message = 'Authentication failed']);

  @JsonKey(defaultValue: 'Authentication failed')
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.authenticationFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.authenticationFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationFailedFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $AuthenticationFailedFailureCopyWith<AuthenticationFailedFailure>
      get copyWith => _$AuthenticationFailedFailureCopyWithImpl<
          AuthenticationFailedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) authenticationFailed,
    required TResult Function(String message) verificationFailed,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) invalidPhoneNumberFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return authenticationFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
  }) {
    return authenticationFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailedFailure value)
        authenticationFailed,
    required TResult Function(VerificationFailedFailure value)
        verificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidPhoneNumberFailure value)
        invalidPhoneNumberFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailedFailure implements AuthFailure {
  const factory AuthenticationFailedFailure([String message]) =
      _$AuthenticationFailedFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $AuthenticationFailedFailureCopyWith<AuthenticationFailedFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationFailedFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $VerificationFailedFailureCopyWith(VerificationFailedFailure value,
          $Res Function(VerificationFailedFailure) then) =
      _$VerificationFailedFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$VerificationFailedFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $VerificationFailedFailureCopyWith<$Res> {
  _$VerificationFailedFailureCopyWithImpl(VerificationFailedFailure _value,
      $Res Function(VerificationFailedFailure) _then)
      : super(_value, (v) => _then(v as VerificationFailedFailure));

  @override
  VerificationFailedFailure get _value =>
      super._value as VerificationFailedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(VerificationFailedFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerificationFailedFailure
    with DiagnosticableTreeMixin
    implements VerificationFailedFailure {
  const _$VerificationFailedFailure([this.message = 'Authentication failed']);

  @JsonKey(defaultValue: 'Authentication failed')
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.verificationFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.verificationFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerificationFailedFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $VerificationFailedFailureCopyWith<VerificationFailedFailure> get copyWith =>
      _$VerificationFailedFailureCopyWithImpl<VerificationFailedFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) authenticationFailed,
    required TResult Function(String message) verificationFailed,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) invalidPhoneNumberFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return verificationFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
  }) {
    return verificationFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailedFailure value)
        authenticationFailed,
    required TResult Function(VerificationFailedFailure value)
        verificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidPhoneNumberFailure value)
        invalidPhoneNumberFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return verificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
  }) {
    return verificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(this);
    }
    return orElse();
  }
}

abstract class VerificationFailedFailure implements AuthFailure {
  const factory VerificationFailedFailure([String message]) =
      _$VerificationFailedFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $VerificationFailedFailureCopyWith<VerificationFailedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(
      NetworkFailure _value, $Res Function(NetworkFailure) _then)
      : super(_value, (v) => _then(v as NetworkFailure));

  @override
  NetworkFailure get _value => super._value as NetworkFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NetworkFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailure with DiagnosticableTreeMixin implements NetworkFailure {
  const _$NetworkFailure([this.message = 'Check your connection']);

  @JsonKey(defaultValue: 'Check your connection')
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.networkFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.networkFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) authenticationFailed,
    required TResult Function(String message) verificationFailed,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) invalidPhoneNumberFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return networkFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
  }) {
    return networkFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailedFailure value)
        authenticationFailed,
    required TResult Function(VerificationFailedFailure value)
        verificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidPhoneNumberFailure value)
        invalidPhoneNumberFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements AuthFailure {
  const factory NetworkFailure([String message]) = _$NetworkFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneNumberFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $InvalidPhoneNumberFailureCopyWith(InvalidPhoneNumberFailure value,
          $Res Function(InvalidPhoneNumberFailure) then) =
      _$InvalidPhoneNumberFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$InvalidPhoneNumberFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPhoneNumberFailureCopyWith<$Res> {
  _$InvalidPhoneNumberFailureCopyWithImpl(InvalidPhoneNumberFailure _value,
      $Res Function(InvalidPhoneNumberFailure) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumberFailure));

  @override
  InvalidPhoneNumberFailure get _value =>
      super._value as InvalidPhoneNumberFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidPhoneNumberFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumberFailure
    with DiagnosticableTreeMixin
    implements InvalidPhoneNumberFailure {
  const _$InvalidPhoneNumberFailure([this.message = 'Invalid phone number']);

  @JsonKey(defaultValue: 'Invalid phone number')
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.invalidPhoneNumberFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthFailure.invalidPhoneNumberFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhoneNumberFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberFailureCopyWith<InvalidPhoneNumberFailure> get copyWith =>
      _$InvalidPhoneNumberFailureCopyWithImpl<InvalidPhoneNumberFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) authenticationFailed,
    required TResult Function(String message) verificationFailed,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) invalidPhoneNumberFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return invalidPhoneNumberFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
  }) {
    return invalidPhoneNumberFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumberFailure != null) {
      return invalidPhoneNumberFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailedFailure value)
        authenticationFailed,
    required TResult Function(VerificationFailedFailure value)
        verificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidPhoneNumberFailure value)
        invalidPhoneNumberFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return invalidPhoneNumberFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
  }) {
    return invalidPhoneNumberFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumberFailure != null) {
      return invalidPhoneNumberFailure(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumberFailure implements AuthFailure {
  const factory InvalidPhoneNumberFailure([String message]) =
      _$InvalidPhoneNumberFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberFailureCopyWith<InvalidPhoneNumberFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $GeneralFailureCopyWith(
          GeneralFailure value, $Res Function(GeneralFailure) then) =
      _$GeneralFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$GeneralFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  _$GeneralFailureCopyWithImpl(
      GeneralFailure _value, $Res Function(GeneralFailure) _then)
      : super(_value, (v) => _then(v as GeneralFailure));

  @override
  GeneralFailure get _value => super._value as GeneralFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GeneralFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeneralFailure with DiagnosticableTreeMixin implements GeneralFailure {
  const _$GeneralFailure([this.message = 'error occured']);

  @JsonKey(defaultValue: 'error occured')
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.generalFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.generalFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeneralFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $GeneralFailureCopyWith<GeneralFailure> get copyWith =>
      _$GeneralFailureCopyWithImpl<GeneralFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) authenticationFailed,
    required TResult Function(String message) verificationFailed,
    required TResult Function(String message) networkFailure,
    required TResult Function(String message) invalidPhoneNumberFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return generalFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
  }) {
    return generalFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? authenticationFailed,
    TResult Function(String message)? verificationFailed,
    TResult Function(String message)? networkFailure,
    TResult Function(String message)? invalidPhoneNumberFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (generalFailure != null) {
      return generalFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailedFailure value)
        authenticationFailed,
    required TResult Function(VerificationFailedFailure value)
        verificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidPhoneNumberFailure value)
        invalidPhoneNumberFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return generalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
  }) {
    return generalFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailedFailure value)? authenticationFailed,
    TResult Function(VerificationFailedFailure value)? verificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidPhoneNumberFailure value)?
        invalidPhoneNumberFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (generalFailure != null) {
      return generalFailure(this);
    }
    return orElse();
  }
}

abstract class GeneralFailure implements AuthFailure {
  const factory GeneralFailure([String message]) = _$GeneralFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $GeneralFailureCopyWith<GeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
