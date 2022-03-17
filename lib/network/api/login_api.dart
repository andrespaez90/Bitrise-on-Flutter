import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/profile_dto.dart';

part 'login_api.g.dart';

@RestApi()
abstract class LoginApi {
  factory LoginApi(Dio _dio) = _LoginApi;

  @GET('/v0.1/me')
  Stream<ProfileResponse> login(@Header('Authorization') String token);
}
