import 'package:flutter/material.dart';
import 'package:flutter_template_app/presentation/pages/connpass_event/connpass_event_page.dart';
import 'package:flutter_template_app/presentation/pages/home/home_page.dart';
import 'package:flutter_template_app/presentation/pages/todo/todo_page.dart';
import 'package:flutter_template_app/tab_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tabViewIndexProvider = StateProvider<int>((ref) => 0);

final navigatorProvider = Provider.autoDispose(TabNavigatorProvider.new);

class TabNavigatorProvider {
  TabNavigatorProvider(this._ref);
  final Ref _ref;

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

  int get tabIndex => _ref.read(tabViewIndexProvider.notifier).state;

  set tabIndex(int index) {
    _ref.read(tabViewIndexProvider.notifier).state = index;
  }
}

class AppRouteStack extends HookConsumerWidget {
  const AppRouteStack({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const AppRouteStack(),
    );
  }

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
        onTap: (index) {
          provider.tabIndex = index;
        },
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
