/// @author think
/// @email TODO
/// @date 2023.09.13
/// @description TODO
/// @license The MIT License

import 'package:dio/dio.dart';
import 'package:litecase_shop/src/network/dio_client.dart';

class Products {
  final DioClient dioClient = DioClient();

  Future<Response> getProductsList() {
    return dioClient.dioGet("/product/list", null);
  }
}
