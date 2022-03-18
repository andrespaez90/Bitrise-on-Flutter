import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/profile_dto.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApi {
  factory UserApi(Dio _dio) = _UserApi;

  @GET('/v0.1/me')
  Stream<ProfileResponse> getProfile(String token);
}
