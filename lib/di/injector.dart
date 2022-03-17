import 'package:get_it/get_it.dart';

import '../integrations/storage/local_storage_manager.dart';
import '../modules/onboarding/login/storage/auth_storage_manager.dart';
import '../modules/onboarding/login/use_cases/login_use_case.dart';
import '../network/api/login_api.dart';
import '../network/http_dio_manager.dart';

final GetIt injector = GetIt.asNewInstance();

void injectDependencies() {
  _registerStorageManager();
  _registerApis();
  _registerUseCases();
}

void _registerStorageManager() {
  injector.registerSingleton<LocalStorageManager>(LocalStorageManager());
  injector.registerSingleton<AuthStorageManager>(
      AuthStorageManagerImpl(injector.get()));
}

void _registerApis() {
  final HttpDioManager httpDioManager = HttpDioManager();
  injector.registerFactory<UserApi>(() => UserApi(httpDioManager.dio));
}

void _registerUseCases() {
  injector.registerFactory<LoginUseCase>(
      () => LoginUseCase(injector.get(), injector.get()));
}
