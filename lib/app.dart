import 'package:flutter/material.dart';
import 'package:flutter_template_app/presentation/pages/connpass_event/connpass_event_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConnpasEventPage(),
    );
  }
}
