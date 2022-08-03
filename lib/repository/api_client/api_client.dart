import 'package:http/http.dart';

abstract class ApiClient {
  Future<Response> fetchTodos();
}

class ApiClientImpl implements ApiClient {
  factory ApiClientImpl({String baseUrl = ''}) {
    return _instance ??= ApiClientImpl._internal(baseUrl);
  }
  ApiClientImpl._internal(this.baseUrl);

  static ApiClientImpl? _instance;

  final String baseUrl;

  static const headers = <String, String>{
    'content-type': 'application/json',
  };

  @override
  Future<Response> fetchTodos() async {
    return get(
      Uri.parse(baseUrl),
      headers: headers,
    );
  }
}
