part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(false) bool isLaoding,
    @Default('') String token,
    @Default(false) bool userAuthorized,
  }) = _LoginState;
}
