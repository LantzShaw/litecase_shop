import 'package:get/get.dart';

/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */
class ProfileController extends GetxController {
  RxList contentList = [].obs;

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

    update();
  }
}
