/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */

import 'package:get/get.dart';
import 'package:litecase_shop/src/features/base/controllers/main.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => MainController());
  }
}
