import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_template_app/domain/models/event/event.dart';

class ConnpasEventDetailsPage extends ConsumerWidget {
  const ConnpasEventDetailsPage({Key? key, required this.event})
      : super(key: key);

  final ConnpassEvent event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(event.title)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(event.place),
              Text(event.description),
            ],
          ),
        ),
      ),
    );
  }
}
