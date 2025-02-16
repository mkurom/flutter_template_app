import 'package:chopper/chopper.dart';
import 'package:flutter_template_app/domain/entities/result/result.dart';
import 'package:flutter_template_app/domain/entities/todo/todo.dart';

part 'chopper_api_service.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class ChopperApiService extends ChopperService {
  static ChopperApiService create(ChopperClient client) =>
      _$ChopperApiService(client);

  @GET(path: '/todos')
  Future<Response<Result<List<Todo>, int>>> fetchTodos();
}
