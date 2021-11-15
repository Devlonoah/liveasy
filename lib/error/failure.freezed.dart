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

  AuthenticationFailed authenticationFailed() {
    return const AuthenticationFailed();
  }

  PhoneVerificationFailed phoneVerificationFailed() {
    return const PhoneVerificationFailed();
  }

  NetworkFailure networkFailure() {
    return const NetworkFailure();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticationFailed,
    required TResult Function() phoneVerificationFailed,
    required TResult Function() networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailed value) authenticationFailed,
    required TResult Function(PhoneVerificationFailed value)
        phoneVerificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $AuthenticationFailedCopyWith<$Res> {
  factory $AuthenticationFailedCopyWith(AuthenticationFailed value,
          $Res Function(AuthenticationFailed) then) =
      _$AuthenticationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationFailedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AuthenticationFailedCopyWith<$Res> {
  _$AuthenticationFailedCopyWithImpl(
      AuthenticationFailed _value, $Res Function(AuthenticationFailed) _then)
      : super(_value, (v) => _then(v as AuthenticationFailed));

  @override
  AuthenticationFailed get _value => super._value as AuthenticationFailed;
}

/// @nodoc

class _$AuthenticationFailed
    with DiagnosticableTreeMixin
    implements AuthenticationFailed {
  const _$AuthenticationFailed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.authenticationFailed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.authenticationFailed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticationFailed,
    required TResult Function() phoneVerificationFailed,
    required TResult Function() networkFailure,
  }) {
    return authenticationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
  }) {
    return authenticationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailed value) authenticationFailed,
    required TResult Function(PhoneVerificationFailed value)
        phoneVerificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class AuthenticationFailed implements AuthFailure {
  const factory AuthenticationFailed() = _$AuthenticationFailed;
}

/// @nodoc
abstract class $PhoneVerificationFailedCopyWith<$Res> {
  factory $PhoneVerificationFailedCopyWith(PhoneVerificationFailed value,
          $Res Function(PhoneVerificationFailed) then) =
      _$PhoneVerificationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneVerificationFailedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $PhoneVerificationFailedCopyWith<$Res> {
  _$PhoneVerificationFailedCopyWithImpl(PhoneVerificationFailed _value,
      $Res Function(PhoneVerificationFailed) _then)
      : super(_value, (v) => _then(v as PhoneVerificationFailed));

  @override
  PhoneVerificationFailed get _value => super._value as PhoneVerificationFailed;
}

/// @nodoc

class _$PhoneVerificationFailed
    with DiagnosticableTreeMixin
    implements PhoneVerificationFailed {
  const _$PhoneVerificationFailed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.phoneVerificationFailed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.phoneVerificationFailed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PhoneVerificationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticationFailed,
    required TResult Function() phoneVerificationFailed,
    required TResult Function() networkFailure,
  }) {
    return phoneVerificationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
  }) {
    return phoneVerificationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (phoneVerificationFailed != null) {
      return phoneVerificationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailed value) authenticationFailed,
    required TResult Function(PhoneVerificationFailed value)
        phoneVerificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return phoneVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
  }) {
    return phoneVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (phoneVerificationFailed != null) {
      return phoneVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class PhoneVerificationFailed implements AuthFailure {
  const factory PhoneVerificationFailed() = _$PhoneVerificationFailed;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(
      NetworkFailure _value, $Res Function(NetworkFailure) _then)
      : super(_value, (v) => _then(v as NetworkFailure));

  @override
  NetworkFailure get _value => super._value as NetworkFailure;
}

/// @nodoc

class _$NetworkFailure with DiagnosticableTreeMixin implements NetworkFailure {
  const _$NetworkFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.networkFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.networkFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticationFailed,
    required TResult Function() phoneVerificationFailed,
    required TResult Function() networkFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticationFailed,
    TResult Function()? phoneVerificationFailed,
    TResult Function()? networkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationFailed value) authenticationFailed,
    required TResult Function(PhoneVerificationFailed value)
        phoneVerificationFailed,
    required TResult Function(NetworkFailure value) networkFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationFailed value)? authenticationFailed,
    TResult Function(PhoneVerificationFailed value)? phoneVerificationFailed,
    TResult Function(NetworkFailure value)? networkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements AuthFailure {
  const factory NetworkFailure() = _$NetworkFailure;
}
