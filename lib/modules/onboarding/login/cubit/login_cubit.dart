import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../use_cases/login/login_use_case.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase) : super(LoginState()) {
    doLogin();
  }

  final CompositeSubscription _subscriptions = CompositeSubscription();

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
    emit(state.copyWith(userAuthorized: authorized, isLaoding: false));
  }

  void _onLoginError() {
    emit(state.copyWith(isLaoding: false));
  }
}
