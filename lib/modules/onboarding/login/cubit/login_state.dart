part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default('') String token,
  }) = _LoginState;
}
