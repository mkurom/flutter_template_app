import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_template_app/life_cycle_provider.dart';
import 'package:flutter_template_app/presentation/pages/todo/todo_page.dart';
import 'package:flutter_template_app/providers/firebase_auth/authenticator.dart';
import 'package:flutter_template_app/presentation/pages/splash/splash_page.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AppLifecycleState>(
      appLifecycleProvider,
      (previous, next) => debugPrint('Previous: $previous, Next: $next'),
    );

    final isSignedIn = ref.watch(isSignedInProvider).value ?? false;

    if (!isSignedIn) {
      ref.watch(signInAnonymouslyProvider);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ConnpasEventPage(),
      home: isSignedIn ? const TodoPage() : const SplashPage(),
    );
  }
}
