// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {bool isLaoding = false,
      String token = '',
      bool userAuthorized = false}) {
    return _LoginState(
      isLaoding: isLaoding,
      token: token,
      userAuthorized: userAuthorized,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get isLaoding => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get userAuthorized => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({bool isLaoding, String token, bool userAuthorized});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isLaoding = freezed,
    Object? token = freezed,
    Object? userAuthorized = freezed,
  }) {
    return _then(_value.copyWith(
      isLaoding: isLaoding == freezed
          ? _value.isLaoding
          : isLaoding // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userAuthorized: userAuthorized == freezed
          ? _value.userAuthorized
          : userAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLaoding, String token, bool userAuthorized});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? isLaoding = freezed,
    Object? token = freezed,
    Object? userAuthorized = freezed,
  }) {
    return _then(_LoginState(
      isLaoding: isLaoding == freezed
          ? _value.isLaoding
          : isLaoding // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userAuthorized: userAuthorized == freezed
          ? _value.userAuthorized
          : userAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {this.isLaoding = false, this.token = '', this.userAuthorized = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLaoding;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: false)
  @override
  final bool userAuthorized;

  @override
  String toString() {
    return 'LoginState(isLaoding: $isLaoding, token: $token, userAuthorized: $userAuthorized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.isLaoding, isLaoding) ||
                const DeepCollectionEquality()
                    .equals(other.isLaoding, isLaoding)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.userAuthorized, userAuthorized) ||
                const DeepCollectionEquality()
                    .equals(other.userAuthorized, userAuthorized)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLaoding) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(userAuthorized);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState({bool isLaoding, String token, bool userAuthorized}) =
      _$_LoginState;

  @override
  bool get isLaoding => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  bool get userAuthorized => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
