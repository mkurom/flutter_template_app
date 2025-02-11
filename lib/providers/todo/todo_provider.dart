import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template_app/domain/entities/todo/todo.dart';
import 'package:flutter_template_app/infrastructure/repositories/todo_repository/todo_repository_impl.dart';

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

final todoProvider = Provider.autoDispose((ref) => TodoProvider(ref));

class TodoProvider {
  final Ref ref;
  TodoProvider(this.ref);

  Future<void> initState() async {
    await fetchTodoList();
  }

  Future<void> fetchTodoList() async {
    final result = await ref.watch(todoRepository).fetchTodoList();

    result.when(
      success: (todos) {
        ref.watch(_todoListState.notifier).state = todos;
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
      ...(ref.watch(_todoListState) ?? []).map(
          (e) => (e.id == todo.id) ? e.copyWith(completed: !e.completed) : e)
    ];
    ref.watch(_todoListState.notifier).state = newTodoList;

    // Todo:更新処理を行う
    //await _read(todoRepository).updateTodoList(newTodoList);
  }

  void dispose() {
    ref.watch(_todoListState)?.clear();
  }
}
