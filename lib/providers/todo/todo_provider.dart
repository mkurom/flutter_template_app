import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_template_app/domain/models/todo/todo.dart';
import 'package:flutter_template_app/repository/todo_repository/todo_repository.dart';

final _todoListState = StateProvider<List<Todo>?>((ref) => null);

final todoListState = StateProvider<List<Todo>?>((ref) {
  final List<Todo>? todoList = ref.watch(_todoListState);

  return todoList;
});

final todoProvider = Provider.autoDispose((ref) => TodoProvider(ref.read));

class TodoProvider {
  final Reader _read;
  TodoProvider(this._read);

  Future<void> initState() async {
    final result = await _read(todoRepository).fetchTodoList();

    result.when(
      success: (todos) {
        _read(_todoListState.notifier).state = todos;
      },
      failure: (statusCode) {
        if (kDebugMode) {
          print('err : $statusCode');
        }
      },
    );
  }

  void dispose() {
    _read(_todoListState)?.clear();
  }
}
