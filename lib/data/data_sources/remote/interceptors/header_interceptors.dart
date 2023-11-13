import 'dart:developer';

import 'package:dio/dio.dart';

class HeaderInterceptors extends InterceptorsWrapper {
  final String authHeaderKey = 'Authorization';
  final String bearer = 'Bearer';
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // LocalStore localStore = LocalStore.getInstance();
    // await localStore.initialize();
    // await localStore.insertData('token', '2223');
    // final token = await localStore.getDataByName('token');
    // if (token?.isNotEmpty == true) {
    //   options.headers[authHeaderKey] = '$bearer $token';
    // }
    // print(token);
    // print(options);
    inspect(options);
    handler.next(options);
  }
}
