import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/controllers/sign_in.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
