import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

class DioClient with DioMixin implements Dio {
  factory DioClient({String baseUrl = ''}) {
    if (_instance == null) {
      final dio = DioClient._();
      dio.httpClientAdapter = DefaultHttpClientAdapter();
      dio.options = BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      );
      dio.interceptors.add(LogInterceptor(responseBody: true));
      _instance = dio;
    }
    return _instance!;
  }

  static DioClient? _instance;
  DioClient._();

  Future<Response> fetchTodos() async {
    return _instance!.get('');
  }
}
