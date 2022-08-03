import 'package:flutter_template_app/common/index.dart';
import 'package:flutter_template_app/repository/api_client/dio_api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template_app/domain/models/result/result.dart';
import 'package:flutter_template_app/domain/models/todo/todo.dart';

final todoRepository =
    Provider.autoDispose<TodoRepository>((ref) => TodoRepositoryImpl(ref.read));

abstract class TodoRepository {
  Future<Result<List<Todo>, int>> fetchTodoList();
}

class TodoRepositoryImpl implements TodoRepository {
  final Reader _read;
  TodoRepositoryImpl(this._read);
  // final _apiClient = ApiClientImpl(baseUrl: jsonplaceholderUrl);
  // final _apiClient = ChopperApiService.create(
  //     ChopperClientCreator.create(baseUrl: jsonplaceholderUrl));
  final _apiClient = DioClient(baseUrl: jsonplaceholderUrl);

  // failureは暫定的にint型にしている
  // TODO: failureの時の戻り値を修正する
  @override
  Future<Result<List<Todo>, int>> fetchTodoList() async {
    final response = await _apiClient.fetchTodos();

    // http.dart
    // if (response.statusCode == 200) {
    //   final responseBodyJson = jsonDecode(response.body) as List<dynamic>;

    //   final todos = responseBodyJson
    //       .map((dynamic e) => Todo.fromJson(e as Map<String, dynamic>))
    //       .toList();

    //   return Result.success(todos);
    // } else {
    //   return const Result.failure(401);
    // }

    // chopper.dart
    // if (response.isSuccessful) {
    //   final list = response.body as List<dynamic>;

    //   final todos = list
    //       .map((dynamic e) => Todo.fromJson(e as Map<String, dynamic>))
    //       .toList();

    //   return Result.success(todos);
    // } else {
    //   return const Result.failure(401);
    // }

    // dio.dart
    if (response.statusCode == 200) {
      final list = response.data as List<dynamic>;

      final todos = list
          .map((dynamic e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList();

      return Result.success(todos);
    } else {
      return const Result.failure(401);
    }
  }
}
