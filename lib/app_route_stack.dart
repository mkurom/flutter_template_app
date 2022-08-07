import 'package:flutter/material.dart';
import 'package:flutter_template_app/presentation/pages/connpass_event/connpass_event_page.dart';
import 'package:flutter_template_app/presentation/pages/home/home_page.dart';
import 'package:flutter_template_app/presentation/pages/todo/todo_page.dart';
import 'package:flutter_template_app/tab_navigator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _tabViewIndex = StateProvider<int>((_) => 0);

final tabViewIndex = Provider<int>(
  (ref) {
    return ref.watch(_tabViewIndex);
  },
);

final navigatorProvider =
    Provider.autoDispose((ref) => TabNavigatorProvider(ref.read));

class TabNavigatorProvider {
  final Reader _read;
  TabNavigatorProvider(this._read);

  List<Widget> widgetList = [
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

    final currentIndex = _read(tabViewIndex);

    return Offstage(
      // ignore: unrelated_type_equality_checks
      offstage: index != currentIndex,
      child: TabNavigator(
        navigatorKey: key,
        page: widgetList[index],
      ),
    );
  }

  void chnageTabView(int index) {
    _read(_tabViewIndex.state).state = index;
  }
}

class AppRouteStack extends HookConsumerWidget {
  const AppRouteStack({Key? key}) : super(key: key);

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
        currentIndex: ref.watch(tabViewIndex),
        onTap: provider.chnageTabView,
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
