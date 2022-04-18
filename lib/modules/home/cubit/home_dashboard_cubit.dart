import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../repositories/models/user_app_model.dart';
import '../../../use_cases/user_apps/get_user_apps_use_case.dart';

part 'home_dashboard_cubit.freezed.dart';
part 'home_dashboard_state.dart';

class HomeDashboardCubit extends Cubit<HomeDashboardState> {
  HomeDashboardCubit(
    this._userAppUseCase,
  ) : super(HomeDashboardState()) {
    _userAppUseCase.invoke().listen((List<UserAppModel> event) {
      emit(state.copyWith(userApps: event));
    });
  }

  final GetUserAppsUseCase _userAppUseCase;
}
