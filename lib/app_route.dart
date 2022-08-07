import 'package:flutter/material.dart';
import 'package:flutter_template_app/presentation/pages/connpass_event/connpass_event_page.dart';
import 'package:flutter_template_app/presentation/pages/home/home_page.dart';
import 'package:flutter_template_app/presentation/pages/todo/todo_page.dart';

class AppRoute extends StatefulWidget {
  const AppRoute({Key? key}) : super(key: key);

  @override
  State<AppRoute> createState() => _AppRouteState();
}

class _AppRouteState extends State<AppRoute> {
  static const _screens = [
    HomePage(),
    TodoPage(),
    ConnpasEventPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
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
        ));
  }
}
