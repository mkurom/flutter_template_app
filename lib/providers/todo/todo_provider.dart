import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template_app/domain/models/todo/todo.dart';
import 'package:flutter_template_app/repository/todo_repository/todo_repository.dart';

enum TodoListFilter {
  all,
  active,
  completed,
}

final todoListFilter = StateProvider((_) => TodoListFilter.all);

final _todoListState = StateProvider<List<Todo>?>((ref) => null);

final filteredTodos = Provider<List<Todo>>(
  (ref) {
    final filter = ref.watch(todoListFilter);
    final todoList = ref.watch(_todoListState);

    if (todoList == null) {
      return [];
    }

    switch (filter) {
      case TodoListFilter.completed:
        return todoList.where((todo) => todo.completed).toList();
      case TodoListFilter.active:
        return todoList.where((todo) => !todo.completed).toList();
      case TodoListFilter.all:
        return todoList;
    }
  },
);

final todoProvider = Provider.autoDispose((ref) => TodoProvider(ref.read));

class TodoProvider {
  final Reader _read;
  TodoProvider(this._read);

  Future<void> initState() async {
    await fetchTodoList();
  }

  Future<void> fetchTodoList() async {
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

  Future<void> toggle(Todo todo) async {
    final List<Todo> newTodoList = [
      ...(_read(_todoListState) ?? []).map(
          (e) => (e.id == todo.id) ? e.copyWith(completed: !e.completed) : e)
    ];
    _read(_todoListState.notifier).state = newTodoList;

    // Todo:更新処理を行う
    //await _read(todoRepository).updateTodoList(newTodoList);
  }

  void dispose() {
    _read(_todoListState)?.clear();
  }
}
