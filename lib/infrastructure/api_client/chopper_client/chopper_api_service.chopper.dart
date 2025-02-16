// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ChopperApiService extends ChopperApiService {
  _$ChopperApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ChopperApiService;

  @override
  Future<Response<Result<List<Todo>, int>>> fetchTodos() {
    final Uri $url = Uri.parse('/todos');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Result<List<Todo>, int>, Todo>($request);
  }
}
