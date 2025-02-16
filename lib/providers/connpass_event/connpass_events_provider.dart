import 'dart:convert';

import 'package:flutter_template_app/domain/entities/event/event.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

final connpassEventsProvider = FutureProvider<List<ConnpassEvent>>(
  (ref) async {
    try {
      final response =
          await http.get(Uri.parse('https://connpass.com/api/v1/event/'));

      if (response.statusCode == 200) {
        final responseBodyJson =
            jsonDecode(response.body) as Map<String, dynamic>;

        final events = (responseBodyJson['events'] as List<dynamic>)
            .map(
              (dynamic e) => ConnpassEvent.fromJson(e as Map<String, dynamic>),
            )
            .toList();

        return events;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  },
);
