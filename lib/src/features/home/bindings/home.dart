import 'package:get/get.dart';
import 'package:litecase_shop/src/features/home/controllers/home.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => HomeController());
  }
}
