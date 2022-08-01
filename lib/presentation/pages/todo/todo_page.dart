import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_template_app/domain/models/todo/todo.dart';
import 'package:flutter_template_app/providers/todo/todo_provider.dart';
import 'package:flutter_template_app/presentation/pages/splash/splash_page.dart';

class TodoPage extends HookConsumerWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(todoProvider).initState();
      return ref.read(todoProvider).dispose;
    }, []);

    final textController = useTextEditingController();
    final todoList = ref.watch(todoListState);

    if (todoList == null) {
      return const SplashPage();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Simple Todo')),
      body: Column(
        children: [
          TextField(controller: textController),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.sort),
                onPressed: () {
                  // ref.read(todoProvider).toggleSortOrder();
                },
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, int index) =>
                  _TodoTile(todo: todoList[index]),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // ref.read(todoProvider).addTodo(textController);
        },
      ),
    );
  }
}

class _TodoTile extends ConsumerWidget {
  const _TodoTile({required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        title: Text(todo.title),
        leading: IconButton(
          icon: todo.completed
              ? const Icon(Icons.check_box, color: Colors.green)
              : const Icon(Icons.check_box_outline_blank),
          onPressed: () {
            // ref.read(todoProvider).toggleDoneStatus(todo);
          },
        ),
      ),
    );
  }
}
