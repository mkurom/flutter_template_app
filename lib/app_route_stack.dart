import 'package:flutter/material.dart';
import 'package:flutter_template_app/presentation/pages/connpass_event/connpass_event_page.dart';
import 'package:flutter_template_app/presentation/pages/home/home_page.dart';
import 'package:flutter_template_app/presentation/pages/todo/todo_page.dart';
import 'package:flutter_template_app/tab_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tabViewIndexProvider = StateProvider<int>((ref) => 0);

final navigatorProvider =
    Provider.autoDispose((ref) => TabNavigatorProvider(ref));

class TabNavigatorProvider {
  final Ref _ref;
  TabNavigatorProvider(this._ref);

  final List<Widget> widgetList = [
    const HomePage(),
    const TodoPage(),
    const ConnpasEventPage(),
  ];

  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  Widget buildOffstageNavigator(int index) {
    final key = navigatorKeys[index]!;
    final currentIndex = _ref.watch(tabViewIndexProvider);

    return Offstage(
      offstage: index != currentIndex,
      child: TabNavigator(
        navigatorKey: key,
        page: widgetList[index],
      ),
    );
  }

  void changeTabView(int index) {
    _ref.read(tabViewIndexProvider.notifier).state = index;
  }
}

class AppRouteStack extends HookConsumerWidget {
  const AppRouteStack({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(navigatorProvider);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          provider.buildOffstageNavigator(0),
          provider.buildOffstageNavigator(1),
          provider.buildOffstageNavigator(2),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(tabViewIndexProvider),
        onTap: provider.changeTabView,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Connpass',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
