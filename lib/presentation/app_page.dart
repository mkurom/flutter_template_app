import 'package:flutter/material.dart';
import 'package:flutter_template_app/presentation/app_route.dart';
import 'package:flutter_template_app/presentation/app_route_stack.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const AppPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('app page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  AppRoute.route(),
                );
              },
              child: const Text('app_route'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  AppRouteStack.route(),
                );
              },
              child: const Text('app_route_stack'),
            ),
          ),
        ],
      ),
    );
  }
}
