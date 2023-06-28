import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/controllers/profile.dart';
import 'package:litecase_shop/src/features/authentication/controllers/sign_in.dart';
import 'package:litecase_shop/src/features/authentication/controllers/sign_up.dart';

/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */
class AllBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => SignInController());
    Get.lazyPut(() => ProfileController());
  }
}
