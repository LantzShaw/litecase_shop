/// @Author: think
/// @Email: TODO
/// @Date: 2023.07.07
/// @Description: TODO

import 'package:get/get.dart';

class TAnimationController extends GetxController {
  RxBool animation = false.obs;

  // NOTE: 在spalsh页面调用此方法
  Future<void> startSplashAnimation() async {
    await Future.delayed(const Duration(microseconds: 500));
    animation.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    animation.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    // Get.toNamed('/');
    Get.offAllNamed('/');
  }
}
