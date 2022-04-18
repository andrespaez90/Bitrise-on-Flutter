import '../../../network/models/apps_dto.dart';
import '../../../repositories/models/user_app_model.dart';

extension UserAppsExtension on AppsDto {
  UserAppModel toModel() {
    return UserAppModel(
        name: title,
        image: avatarUrl ?? '',
        owner: repoOwner,
        isEnable: !isDisabled);
  }
}
