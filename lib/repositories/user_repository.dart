import 'base_repository.dart';
import 'models/user_model.dart';

class UserRepository extends BaseRepository<UserModel> {
  @override
  void clear() {}

  @override
  void edit(UserModel? Function(UserModel? t) modifier) {}
}
