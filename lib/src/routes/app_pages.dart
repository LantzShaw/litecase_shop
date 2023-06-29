/**
 * @Author: Lantz
 * @Email: lantzshaw@163.com
 * @Date: 2023.06.10
 * @Description: TODO
 */

import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/screens/sign_up/sign_up_screen.dart';
import 'package:litecase_shop/src/features/base/bindings/main.dart';
import 'package:litecase_shop/src/features/base/screens/main/main_screen.dart';

import '../features/authentication/bindings/sign_up.dart';

part './app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    )
  ];
}
