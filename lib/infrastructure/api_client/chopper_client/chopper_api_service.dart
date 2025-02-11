import 'package:chopper/chopper.dart';

part 'chopper_api_service.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class ChopperApiService extends ChopperService {
  static ChopperApiService create(ChopperClient client) =>
      _$ChopperApiService(client);

  @Get(path: "/todos")
  Future<Response> fetchTodos();
}
