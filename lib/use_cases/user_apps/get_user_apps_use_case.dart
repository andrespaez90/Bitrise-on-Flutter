import 'dart:async';

import '../../network/api/apps_api.dart';
import '../../network/models/apps_dto.dart';
import '../../repositories/base_repository.dart';
import '../../repositories/models/user_app_model.dart';
import 'mappers/user_apps_mapper.dart';

class GetUserAppsUseCase {
  GetUserAppsUseCase(
    this._appsApi,
    this._repository,
  );

  final AppsApi _appsApi;
  final RepositoryDataProducer<List<UserAppModel>> _repository;

  Stream<List<UserAppModel>> invoke() {
    return _appsApi.getApps().map((AppsResponse response) {
      final List<UserAppModel> data =
          response.data.map((AppsDto app) => app.toModel()).toList();
      _repository.set(data);
      return data;
    });
  }
}
