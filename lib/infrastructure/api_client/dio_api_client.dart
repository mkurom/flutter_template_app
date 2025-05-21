import 'package:dio/dio.dart';

class DioClient with DioMixin implements Dio {
  factory DioClient({String baseUrl = ''}) {
    if (_instance == null) {
      final dio = DioClient._()
        ..httpClientAdapter = HttpClientAdapter()
        ..options = BaseOptions(
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
  DioClient._();

  static DioClient? _instance;

  Future<Response<dynamic>> fetchTodos() async {
    return _instance!.get('todos');
  }
}
