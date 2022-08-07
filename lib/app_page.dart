import 'package:flutter/material.dart';
import 'package:flutter_template_app/app_route.dart';
import 'package:flutter_template_app/app_route_stack.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('app page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              child: const Text('app_route'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AppRoute()),
                );
              },
            ),
          ),
          Center(
            child: TextButton(
              child: const Text('app_route_stack'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppRouteStack()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
