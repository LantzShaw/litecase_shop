/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.09
 * @Description: TODO
 */

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
          child: Text('切换语言'),
        )
      ],
    );
  }
}
