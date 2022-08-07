import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_template_app/domain/models/event/event.dart';
import 'package:flutter_template_app/providers/connpass_event/connpass_events_provider.dart';
import 'package:flutter_template_app/presentation/pages/connpass_event/event_details/event_details_page.dart';

class ConnpasEventPage extends ConsumerWidget {
  const ConnpasEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(connpassEventsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('connpass event list'),
      ),
      body: provider.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (err, stack) => Center(
          child: Column(
            children: [
              Text('Error: $err'),
              Text(stack!.toString()),
            ],
          ),
        ),
        data: (events) {
          return ListView.separated(
            padding: const EdgeInsets.only(top: 20),
            itemCount: events.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              child: _eventTile(
                context,
                events[index],
              ),
            ),
            separatorBuilder: (context, index) {
              return const Divider(height: 1);
            },
          );
        },
      ),
    );
  }

  Widget _eventTile(BuildContext context, ConnpassEvent event) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ConnpasEventDetailsPage(
                event: event,
              );
            },
          ),
        );
      },
      child: ListTile(
        title: Text(event.title),
      ),
    );
  }
}
