/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:get/get.dart';

class ProfileController extends GetxController {
  // 它的状态管理可以分为这几种： GetBuilder、GetX、Obx、MixinBuilder
  //
  // 以及它们通用的Controller：GetXController

  RxList contentList = [].obs;

  Rx<String> a = ''.obs;

  // NOTE: RxInt, Rx<String>,RxList,RxList等声明的变量需要加.obs 否则会报错

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void increase(String content) {
    contentList.add(content);

    // NOTE: update(); 普通变量(例如: String name = '' 没有.obs) -> 需要手动触发update()，与provider差不多
  }
}
