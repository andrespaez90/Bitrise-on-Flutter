import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpDioManager {
  HttpDioManager()
      : dio = Dio(
          BaseOptions(
            baseUrl: 'https://api.bitrise.io/',
            contentType: 'application/json; charset=UTF-8',
            connectTimeout: 10000,
            sendTimeout: 10000,
          ),
        ) {
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ));
    }
  }

  final Dio dio;
}
