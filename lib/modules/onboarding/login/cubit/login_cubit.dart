import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../use_cases/login_use_case.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super(LoginState()) {
    doLogin();
  }

  final List<StreamSubscription<dynamic>> _subscriptions =
      <StreamSubscription<dynamic>>[];

  final LoginUseCase _loginUseCase;

  void onChangeToken(String token) {
    emit(state.copyWith(token: token));
  }

  void doLogin() {
    emit(state.copyWith(isLaoding: true));
    _subscriptions.add(_loginUseCase.invoke(newToken: state.token).listen(
          (bool authorized) => _onUserAthorized(authorized),
          onError: (Object error) => _onLoginError(),
        ));
  }

  void _onUserAthorized(bool authorized) {
    emit(state.copyWith(userAuthorized: true, isLaoding: false));
  }

  void _onLoginError() {
    emit(state.copyWith(isLaoding: false));
  }
}
