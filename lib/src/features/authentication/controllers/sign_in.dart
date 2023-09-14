/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:get/get.dart';

class SignInController extends GetxController {
  RxInt counter = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    print("sign in");
  }

  void increase() {
    counter.value++;
  }

  void decrease() {
    counter.value--;
  }
}
