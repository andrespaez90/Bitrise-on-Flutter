import 'base_repository.dart';
import 'models/user_app_model.dart';

class UserAppsRepository extends BaseRepository<List<UserAppModel>> {
  @override
  void clear() {}

  @override
  void edit(List<UserAppModel>? Function(List<UserAppModel>? t) modifier) {}
}
