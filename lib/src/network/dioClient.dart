/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.29
 * @Description: TODO
 */
import 'package:dio/dio.dart';

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
    // dio.interceptors.add();
  }

  Future<Response> dioGet(path, params) {
    return dio.get(path, queryParameters: params);
  }

  Future<Response> dioPost(path, data) {
    return dio.post(path, data: data);
  }

  Future<Response> dioPut(path, data) {
    return dio.put(path, data: data);
  }

  Future<Response> dioDelete(path, data) {
    return dio.delete(path, data: data);
  }

  Future<Response> dioPatch(path, data) {
    return dio.patch(path, data: data);
  }
}
