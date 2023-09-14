/// @author think
/// @email TODO
/// @date 2023.09.13
/// @description TODO
/// @license The MIT License

import 'package:dio/dio.dart';
import 'package:litecase_shop/src/network/dio_client.dart';

class Cart {
  final DioClient dioClient = DioClient();

  Future<Response> getCartList() {
    return dioClient.dioGet("/cart/list", null);
  }
}
