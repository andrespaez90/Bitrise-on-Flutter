import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../integrations/storage/local_storage_manager.dart';
import '../modules/onboarding/login/storage/auth_storage_manager.dart';
import '../network/api/apps_api.dart';
import '../network/api/login_api.dart';
import '../network/http_dio_manager.dart';
import '../network/interceptors/auth_interceptor.dart';
import '../repositories/apps_repository.dart';
import '../repositories/base_repository.dart';
import '../repositories/models/user_app_model.dart';
import '../repositories/models/user_model.dart';
import '../repositories/user_repository.dart';
import '../use_cases/login/login_use_case.dart';
import '../use_cases/user_apps/get_user_apps_use_case.dart';

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

  final UserAppsRepository userAppsRepository = UserAppsRepository();
  injector.registerLazySingleton<RepositoryDataProducer<List<UserAppModel>>>(
      () => userAppsRepository);
  injector.registerLazySingleton<RepositoryDataConsumer<List<UserAppModel>>>(
      () => userAppsRepository);
}

void _registerApis() {
  final AuthInterceptor authInterceptor = AuthInterceptor(injector.get());
  final HttpDioManager httpDioManager =
      HttpDioManager(interceptors: <InterceptorsWrapper>[authInterceptor]);
  injector.registerFactory<LoginApi>(() => LoginApi(httpDioManager.dio));
  injector.registerFactory<AppsApi>(() => AppsApi(httpDioManager.dio));
}

void _registerUseCases() {
  injector.registerFactory<LoginUseCase>(
      () => LoginUseCase(injector.get(), injector.get(), injector.get()));
  injector.registerFactory<GetUserAppsUseCase>(
      () => GetUserAppsUseCase(injector.get(), injector.get()));
}
