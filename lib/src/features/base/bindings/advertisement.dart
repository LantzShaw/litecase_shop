/// @author think
/// @email TODO
/// @date 2023.09.14
/// @description TODO
/// @license The MIT License

import 'package:get/get.dart';
import 'package:litecase_shop/src/features/base/controllers/advertisement.dart';

class AdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdvertisementController());
  }
}
