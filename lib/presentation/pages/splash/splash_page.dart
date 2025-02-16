import 'package:flutter/material.dart';
import 'package:flutter_template_app/common/index.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: kAppBlack),
      ),
    );
  }
}
