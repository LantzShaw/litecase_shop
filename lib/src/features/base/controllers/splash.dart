/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.07.01
 * @Description: TODO
 */

import 'package:get/get.dart';

class SplashController extends GetxController {
  RxBool animation = false.obs;

  Future<void> startAnimation() async {
   await Future.delayed(const Duration(microseconds: 500));
    animation.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    // Get.toNamed('/');
  }
}
