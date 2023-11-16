import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String endpoint = dotenv.env['BASE_URL'] ?? '';
}
