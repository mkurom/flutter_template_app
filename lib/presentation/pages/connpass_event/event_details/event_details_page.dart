import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_template_app/domain/entities/event/event.dart';

class ConnpasEventDetailsPage extends StatelessWidget {
  const ConnpasEventDetailsPage({super.key, required this.event});

  static Route<dynamic> route(ConnpassEvent event) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => ConnpasEventDetailsPage(event: event),
    );
  }

  final ConnpassEvent event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(event.title)),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(),
        ),
      ),
    );
  }
}
