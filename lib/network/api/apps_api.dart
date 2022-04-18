import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/apps_dto.dart';

part 'apps_api.g.dart';

@RestApi()
abstract class AppsApi {
  factory AppsApi(Dio _dio) = _AppsApi;

  @GET('/v0.1/apps')
  Stream<AppsResponse> getApps();
}
