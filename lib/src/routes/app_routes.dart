/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.10
/// @Description: TODO

part of './app_pages.dart';

abstract class Routes {
  // TODO: “_” 表示一个私有的命名构造函数，在别的地方无法使用
  Routes._();

  static const main = _Paths.main;
  static const advertisement = _Paths.advertisement;
  static const notification = _Paths.notification;
  static const home = _Paths.home;
  static const profile = _Paths.profile;
  static const category = _Paths.category;
  static const cart = _Paths.cart;

  static const signIn = _Paths.signIn;
  static const signUp = _Paths.signUp;
  static const welcome = _Paths.welcome;
}

abstract class _Paths {
  _Paths._();

  static const main = '/';
  static const advertisement = '/advertisement';
  static const notification = '/notification';
  static const home = '/home';
  static const profile = '/profile';
  static const category = '/category';
  static const cart = '/cart';

  static const signIn = '/signIn';
  static const signUp = '/signUp';
  static const welcome = '/welcome';
}
