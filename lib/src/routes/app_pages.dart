/// @Author: Lantz
/// @Email: lantzshaw@163.com
/// @Date: 2023.06.10
/// @Description: TODO

import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/bindings/opt.dart';
import 'package:litecase_shop/src/features/authentication/bindings/profile.dart';
import 'package:litecase_shop/src/features/authentication/bindings/sign_in.dart';
import 'package:litecase_shop/src/features/authentication/bindings/sign_up.dart';
import 'package:litecase_shop/src/features/authentication/screens/opt/opt_screen.dart';
import 'package:litecase_shop/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:litecase_shop/src/features/authentication/screens/sign_in/sign_in_screen.dart';
import 'package:litecase_shop/src/features/authentication/screens/sign_up/sign_up_screen.dart';
import 'package:litecase_shop/src/features/base/bindings/advertisement.dart';
import 'package:litecase_shop/src/features/base/bindings/main.dart';
import 'package:litecase_shop/src/features/base/screens/advertisement/advertisement_screen.dart';
import 'package:litecase_shop/src/features/base/screens/main/main_screen.dart';
import 'package:litecase_shop/src/features/base/screens/welcome/welcome_screen.dart';
import 'package:litecase_shop/src/features/category/bindings/category.dart';
import 'package:litecase_shop/src/features/category/screens/category_screen.dart';
import 'package:litecase_shop/src/features/home/bindings/home.dart';
import 'package:litecase_shop/src/features/home/screens/home/home_screen.dart';
import 'package:litecase_shop/src/features/notification/bindings/notification.dart';
import 'package:litecase_shop/src/features/notification/screens/notification_screen.dart';

part './app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.advertisement,
      page: () => AdvertisementScreen(),
      binding: AdvertisementBinding(),
    ),
    GetPage(
      name: Routes.notification,
      page: () => NotificationScreen(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: Routes.signUp,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.signIn,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.welcome,
      page: () => WelcomeScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfileScreen(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.opt,
      page: () => OptScreen(),
      binding: OptBinding(),
    ),
    GetPage(
      name: Routes.category,
      page: () => CategoryScreen(),
      binding: CategoryBinding(),
    ),
  ];
}
