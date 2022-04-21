import '../../../network/models/profile_dto.dart';
import '../../../repositories/models/user_model.dart';

extension UserModelMapper on ProfileDto {
  UserModel toModel() {
    return UserModel(
        username: username,
        avatarUrl: avatarUrl,
        createAt: createAt,
        email: email);
  }
}
