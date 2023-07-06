/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:get/get.dart';

class SignInController extends GetxController {
  RxInt counter = 0.obs;

  void increase() {
    counter.value++;
  }

  void decrease() {
    counter.value--;
  }
}
