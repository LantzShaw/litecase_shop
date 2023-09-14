/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:get/get.dart';
import 'package:litecase_shop/src/constants/app_sizes.dart';

class ProfileController extends GetxController {
  // 它的状态管理可以分为这几种： GetBuilder、GetX、Obx、MixinBuilder
  // 以及它们通用的Controller：GetXController

  RxList contentList = [].obs;
  Rx<String> a = ''.obs;

  RxList<String> imageUrl = [
    'https://dimg04.c-ctrip.com/images/zg0o180000014yl20DEA4.jpg',
    'https://dimg04.c-ctrip.com/images/zg0f180000014vrut370F.jpg',
    'https://dimg04.c-ctrip.com/images/zg0n18000001528jhD6B2.jpg'
  ].obs;
  RxDouble appBarAlpha = 0.0.obs;

  // NOTE: RxInt, Rx<String>,RxList,RxList等声明的变量需要加.obs 否则会报错

  void onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;

    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }

    appBarAlpha.value = alpha;
  }

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

  void increase(String content) {
    contentList.add(content);

    // NOTE: update(); 普通变量(例如: String name = '' 没有.obs) -> 需要手动触发update()，与provider差不多
  }
}
