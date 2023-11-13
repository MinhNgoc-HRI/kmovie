import 'package:dio/dio.dart';
import 'package:kmovie/domain/repositories/activity_repository.dart';

final dio = Dio();

class ActivityRepositoryImpl implements ActivityRepository {
  @override
  Future<String> getActivity() async {
    return '';
  }
}
