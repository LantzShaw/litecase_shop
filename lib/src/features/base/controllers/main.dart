/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final PageController _pageController = PageController();

  RxInt currentIndex = 0.obs;
  RxList screens = [].obs;

  void changeIndex(int newIndex) {
    currentIndex.value = newIndex;

    _pageController.jumpToPage(newIndex);

    print(newIndex);

    update();
  }
}
