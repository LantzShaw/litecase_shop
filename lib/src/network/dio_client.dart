/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.29
 * @Description: TODO
 */
import 'package:dio/dio.dart';
import 'package:litecase_shop/src/network/interceptors/error_interceptors.dart';
import 'package:litecase_shop/src/network/interceptors/request_interceptors.dart';
import 'package:litecase_shop/src/network/interceptors/response_interceptors.dart';

class DioClient {
  final dio = Dio();

  DioClient() {
    _configureDio();
  }

  void _configureDio() {
    // dio.options.baseUrl = 'http:localhost:9000';
    // dio.options.connectTimeout = const Duration(seconds: 5);
    // dio.options.receiveTimeout = const Duration(seconds: 2);

    dio.options
      ..baseUrl = 'http://localhost:9000'
      ..connectTimeout = const Duration(seconds: 5)
      ..receiveTimeout = const Duration(seconds: 2);

    final options = BaseOptions(
      baseUrl: 'http://localhost:9001',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 2),
    );

    final anotherDio = Dio(options);

    _addInterceptors();
  }

  void _addInterceptors() {
    dio.interceptors.add(RequestInterceptors());
    dio.interceptors.add(ResponseInterceptors());
    dio.interceptors.add(ErrorInterceptors());
    dio.interceptors.add(LogInterceptor());
  }

  Future<Response> dioGet(String path, Map<String, dynamic>? params) {
    return dio.get(path, queryParameters: params);
  }

  Future<Response> dioPost(String path, Object? data) {
    return dio.post(path, data: data);
  }

  Future<Response> dioPut(String path, Object? data) {
    return dio.put(path, data: data);
  }

  Future<Response> dioDelete(String path, Object? data) {
    return dio.delete(path, data: data);
  }

  Future<Response> dioPatch(String path, Object? data) {
    return dio.patch(path, data: data);
  }
}
