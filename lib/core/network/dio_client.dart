import 'package:dio/dio.dart';

import '../utils/logger.dart';

class DioClient {

  late final Dio dio;

  DioClient() {

    dio = Dio(

      BaseOptions(

        connectTimeout: const Duration(seconds: 10),

        receiveTimeout: const Duration(seconds: 10),

        sendTimeout: const Duration(seconds: 10),
      ),
    );

    // Add interceptors
    dio.interceptors.add(

      InterceptorsWrapper(

        // Before request
        onRequest: (options, handler) {

          AppLogger.info(
            "REQUEST => ${options.uri}",
          );

          return handler.next(options);
        },

        // Response
        onResponse: (response, handler) {

          AppLogger.info(
            "RESPONSE => ${response.statusCode}",
          );

          return handler.next(response);
        },

        // Error
        onError: (DioException error, handler) {

          AppLogger.error(
            "ERROR => ${error.message}",
          );

          return handler.next(error);
        },
      ),
    );
  }
}