import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class ApiService extends DioForNative {
  ApiService()
      : super(BaseOptions(
          baseUrl: "https://rickandmortyapi.com/api",
          connectTimeout: const Duration(
            milliseconds: 5000,
          ),
          receiveTimeout: const Duration(
            milliseconds: 60000,
          ),
        )) {
    interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
