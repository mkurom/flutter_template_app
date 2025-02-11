import 'package:flutter_template_app/domain/entities/result/result.dart';
import 'package:flutter_template_app/domain/entities/todo/todo.dart';

abstract class TodoRepository {
  Future<Result<List<Todo>, int>> fetchTodoList();
}
