import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:flutter_template_app/domain/models/event/event.dart';

class ConnpasEventDetailsPage extends StatelessWidget {
  const ConnpasEventDetailsPage({Key? key, required this.event})
      : super(key: key);

  final ConnpassEvent event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(event.title)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Html(
                data: event.description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
