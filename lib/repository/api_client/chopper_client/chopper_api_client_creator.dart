import 'package:chopper/chopper.dart';

class ChopperClientCreator {
  static ChopperClient create({String baseUrl = ''}) {
    return ChopperClient(
      baseUrl: baseUrl,
      converter: const JsonConverter(),
      // errorConverter: const JsonConverter(),
      // interceptors: [
      //   (request) async => request.copyWith(
      //         headers: {
      //           'Content-Type': 'application/json',
      //         },
      //       ),
      // ],
    );
  }
}
