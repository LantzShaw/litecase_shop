/// @Author: Lantz
/// @Email: lantzshaw@163.com
/// @Date: 2023.06.10
/// @Description: TODO

import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/bindings/sign_in.dart';
import 'package:litecase_shop/src/features/authentication/bindings/sign_up.dart';
import 'package:litecase_shop/src/features/authentication/screens/sign_in/sign_in_screen.dart';
import 'package:litecase_shop/src/features/authentication/screens/sign_up/sign_up_screen.dart';
import 'package:litecase_shop/src/features/base/bindings/main.dart';
import 'package:litecase_shop/src/features/base/screens/main/main_screen.dart';
import 'package:litecase_shop/src/features/base/screens/welcome/welcome_screen.dart';
import 'package:litecase_shop/src/features/home/bindings/home.dart';
import 'package:litecase_shop/src/features/home/screens/home/home_screen.dart';

part './app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.welcome,
      page: () => const WelcomeScreen(),
      // binding: HomeBinding(),
    )
  ];
}
