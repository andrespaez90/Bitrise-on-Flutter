import '../../../../network/api/login_api.dart';
import '../../../../network/models/profile_dto.dart';
import '../../../../repositories/base_repository.dart';
import '../../../../repositories/models/user_model.dart';
import '../../../../repositories/user_repository.dart';
import '../../../mappers/user_model_mapper.dart';
import '../storage/auth_storage_manager.dart';

class LoginUseCase {
  LoginUseCase(
    this._userApi,
    this._authStorageManager,
    this.userRepository,
  );

  final LoginApi _userApi;
  final AuthStorageManager _authStorageManager;
  final RepositoryDataProducer<UserModel> userRepository;

  Stream<bool> invoke({required String newToken}) {
    if (newToken.isNotEmpty) {
      return validateToken(newToken);
    }
    return _authStorageManager
        .getToken()
        .asStream()
        .asyncExpand((String? tokenSaved) async* {
      if (tokenSaved != null) {
        yield* validateToken(tokenSaved);
      }
      yield* Stream<bool>.value(false);
    });
  }

  Stream<bool> validateToken(String token) {
    return _userApi.login(token).asyncMap((ProfileResponse model) async {
      await _authStorageManager.setToken(token);
      userRepository.set(model.data.toModel());
      return true;
    });
  }
}
