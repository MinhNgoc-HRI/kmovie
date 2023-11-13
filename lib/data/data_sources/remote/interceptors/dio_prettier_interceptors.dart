import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioPrettierInterceptors extends PrettyDioLogger {
  static DioPrettierInterceptors? _instance;

  factory DioPrettierInterceptors.getInstance() {
    _instance ??= DioPrettierInterceptors._();
    return _instance!;
  }

  DioPrettierInterceptors._()
      : super(
            requestHeader: true,
            requestBody: true,
            responseHeader: false,
            responseBody: true,
            error: true,
            compact: true,
            maxWidth: 120);
}
