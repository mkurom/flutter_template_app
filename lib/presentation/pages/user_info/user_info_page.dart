import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_app/core/providers/firebase_auth/authenticator.dart';

class UserInfo extends ConsumerWidget {
  const UserInfo({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const UserInfo(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myId = ref.watch(userIdProvider).value;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(myId ?? 'non uid'),
        ],
      ),
    );
  }
}
