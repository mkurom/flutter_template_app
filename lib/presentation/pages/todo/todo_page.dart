import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_template_app/domain/entities/todo/todo.dart';
import 'package:flutter_template_app/providers/todo/todo_provider.dart';
import 'package:flutter_template_app/presentation/pages/splash/splash_page.dart';

final addTodoKey = UniqueKey();
final activeFilterKey = UniqueKey();
final completedFilterKey = UniqueKey();
final allFilterKey = UniqueKey();

class TodoPage extends HookConsumerWidget {
  const TodoPage({super.key});

  Future<void> fetch(WidgetRef ref) async {
    try {
      await ref.read(todoProvider).initState();
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
      // TODO:エラーダイアログの表示
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState<bool>(false);

    useEffect(() {
      Future(() async {
        isLoading.value = true;
        await fetch(ref);
        isLoading.value = false;
      });
      // return null;
      return ref.read(todoProvider).dispose;
    }, []);

    if (isLoading.value) {
      return const SplashPage();
    }

    final textController = useTextEditingController();
    final todoList = ref.watch(filteredTodos);

    return Scaffold(
      appBar: AppBar(title: const Text('Simple Todo')),
      body: todoList.isEmpty
          ? const Center(
              child: Text('データがありません。'),
            )
          : Column(
              children: [
                // TextField(controller: textController),
                _TodoFilter(),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      isLoading.value = true;
                      await fetch(ref);
                      isLoading.value = false;
                    },
                    child: ListView.builder(
                      itemCount: todoList.length,
                      itemBuilder: (context, int index) {
                        return _TodoTile(todo: todoList[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const LocalTodoPage()),
          // );
          // ref.read(todoProvider).addTodo(textController);
        },
      ),
    );
  }
}

class _TodoFilter extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text('フィルター'),
        Tooltip(
          key: allFilterKey,
          message: 'All todos',
          child: TextButton(
            onPressed: () =>
                ref.read(todoListFilter.notifier).state = TodoListFilter.all,
            style: const ButtonStyle(
              visualDensity: VisualDensity.compact,
            ),
            child: const Text('All'),
          ),
        ),
        Tooltip(
          key: activeFilterKey,
          message: 'Only uncompleted todos',
          child: TextButton(
            onPressed: () =>
                ref.read(todoListFilter.notifier).state = TodoListFilter.active,
            style: const ButtonStyle(
              visualDensity: VisualDensity.compact,
            ),
            child: const Text('Active'),
          ),
        ),
        Tooltip(
          key: completedFilterKey,
          message: 'Only completed todos',
          child: TextButton(
            onPressed: () => ref.read(todoListFilter.notifier).state =
                TodoListFilter.completed,
            style: const ButtonStyle(
              visualDensity: VisualDensity.compact,
            ),
            child: const Text('Completed'),
          ),
        ),
      ],
    );
  }
}

class _TodoTile extends HookConsumerWidget {
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
            ref.read(todoProvider).toggle(todo);
          },
        ),
      ),
    );
  }
}
