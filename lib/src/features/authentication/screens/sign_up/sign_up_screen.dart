/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.09
/// @Description: TODO

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/sign_up.dart';

// GetView 搭配binding
class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text('${controller.name.value}')),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.dark() : ThemeData.light(),
            );
          },
          child: Text('切换主题'),
        ),
        ElevatedButton(
          onPressed: () {
            var local = const Locale('en', 'US');

            Get.updateLocale(local);
          },
          child: const Text('切换语言'),
        ),
        ElevatedButton(
          onPressed: () {
            // Get.to(SignUpScreen());

            // 命名路由
            // Get.toNamed('/signUp');

            // 进入下一个页面，但没有返回上一个页面的选项（用于闪屏页，登录页面等）。
            // Get.off('/signUp');

            // Get.offAndToNamed('/signIn');
            // Get.offAllNamed('/signIn');

            // 进入下一个页面并取消之前的所有路由（在购物车、投票和测试中很有用）。
            // Get.offAll('/signUp');

            // 要关闭snackbars, dialogs, bottomsheets或任何你通常会用Navigator.pop(context)关闭的东西
            // Get.back();
          },
          child: const Text('跳转至登录'),
        )
      ],
    );
  }
}
