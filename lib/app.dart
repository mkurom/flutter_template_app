import 'package:flutter/material.dart';
import 'package:flutter_template_app/core/providers/firebase_auth/authenticator.dart';
import 'package:flutter_template_app/core/providers/life_cycle_provider.dart';
import 'package:flutter_template_app/presentation/app_page.dart';
import 'package:flutter_template_app/presentation/pages/splash/splash_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

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
      home: isSignedIn ? const AppPage() : const SplashPage(),
    );
  }
}
