/// @author think
/// @email TODO
/// @date 2023.09.14
/// @description TODO
/// @license The MIT License

import 'package:get/get.dart';

class AdvertisementController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void navigateTo() {
    Future.delayed(const Duration(microseconds: 3000), () => Get.toNamed("/"));
  }
}
