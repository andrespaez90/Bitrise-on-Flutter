part of 'home_dashboard_cubit.dart';

@freezed
class HomeDashboardState with _$HomeDashboardState {
  factory HomeDashboardState({
    @Default(<UserAppModel>[]) List<UserAppModel> userApps,
  }) = _HomeDashboardState;
}
