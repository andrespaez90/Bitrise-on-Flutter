import '../../../../network/api/login_api.dart';
import '../../../../network/models/profile_dto.dart';
import '../storage/auth_storage_manager.dart';

class LoginUseCase {
  LoginUseCase(
    this._userApi,
    this._authStorageManager,
  );

  final UserApi _userApi;
  final AuthStorageManager _authStorageManager;

  Stream<ProfileDto> doLogin(String token) {
    return _userApi.login(token).asyncMap((ProfileResponse model) async {
      await _saveToken(token);
      return model.data;
    });
  }

  Future<void> _saveToken(String token) {
    return _authStorageManager.setToken(token);
  }
}
