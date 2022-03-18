import 'package:get_it/get_it.dart';

import '../integrations/storage/local_storage_manager.dart';
import '../modules/onboarding/login/storage/auth_storage_manager.dart';
import '../modules/onboarding/login/use_cases/login_use_case.dart';
import '../network/api/login_api.dart';
import '../network/api/user_api.dart';
import '../network/http_dio_manager.dart';
import '../repositories/base_repository.dart';
import '../repositories/models/user_model.dart';
import '../repositories/user_repository.dart';

final GetIt injector = GetIt.asNewInstance();

void injectDependencies() {
  _registerStorageManager();
  _registerRepositories();
  _registerApis();
  _registerUseCases();
}

void _registerStorageManager() {
  injector.registerSingleton<LocalStorageManager>(LocalStorageManager());
  injector.registerSingleton<AuthStorageManager>(
      AuthStorageManagerImpl(injector.get()));
}

void _registerRepositories() {
  final UserRepository userRepository = UserRepository();
  injector.registerLazySingleton<RepositoryDataProducer<UserModel>>(
      () => userRepository);
  injector.registerLazySingleton<RepositoryDataConsumer<UserModel>>(
      () => userRepository);
}

void _registerApis() {
  final HttpDioManager httpDioManager = HttpDioManager();
  injector.registerFactory<LoginApi>(() => LoginApi(httpDioManager.dio));
  injector.registerFactory<UserApi>(() => UserApi(httpDioManager.dio));
}

void _registerUseCases() {
  injector.registerFactory<LoginUseCase>(
      () => LoginUseCase(injector.get(), injector.get(), injector.get()));
}
