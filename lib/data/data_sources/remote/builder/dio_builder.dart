import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kmovie/utils/constants.dart';
import 'package:kmovie/data/data_sources/remote/interceptors/dio_prettier_interceptors.dart';
import 'package:kmovie/data/data_sources/remote/interceptors/header_interceptors.dart';

class DioBuilder extends DioMixin {
  final String contentType = 'application/json';
  final Duration connectionTimeOutMls = const Duration(milliseconds: 30000);
  final Duration readTimeOutMls = const Duration(milliseconds: 30000);
  final Duration writeTimeOutMls = const Duration(milliseconds: 30000);

  static DioBuilder getInstance() => DioBuilder._();

  DioBuilder._([BaseOptions? options]) {
    options = BaseOptions(
        baseUrl: Constants.endpoint,
        contentType: contentType,
        connectTimeout: connectionTimeOutMls,
        receiveTimeout: readTimeOutMls,
        sendTimeout: writeTimeOutMls);

    this.options = options;
    if (kDebugMode) {
      interceptors.add(DioPrettierInterceptors.getInstance());
    }
    interceptors.add(HeaderInterceptors());
    httpClientAdapter = HttpClientAdapter();
  }
}
