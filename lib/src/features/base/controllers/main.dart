/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */

import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeIndex(int newIndex) {
    currentIndex.value = newIndex;
    update();
  }
}
