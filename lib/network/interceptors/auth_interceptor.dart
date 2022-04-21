import 'package:dio/dio.dart';

import '../../modules/onboarding/login/storage/auth_storage_manager.dart';

class AuthInterceptor extends InterceptorsWrapper {
  AuthInterceptor(AuthStorageManager _authStorageManager)
      : super(onRequest:
            (RequestOptions options, RequestInterceptorHandler handler) async {
          final String? token = await _authStorageManager.getToken();
          if (!options.headers.containsKey('Authorization')) {
            options = options.copyWith(headers: <String, dynamic>{
              ...options.headers,
              'Authorization': token,
            });
          }
          return handler.next(options);
        }, onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        }, onError: (DioError options, ErrorInterceptorHandler handler) {
          if (options.response?.statusCode == 401) {}
          handler.next(options);
        });
}
