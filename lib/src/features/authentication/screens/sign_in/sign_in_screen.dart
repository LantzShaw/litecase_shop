/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.09
 * @Description: TODO
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/controllers/sign_in.dart';

// 当我们的页面中只依赖了一个控制器的情况话，那么使用GetView将是很好的选择，因为他大大简化了我们的代码。
// GetView 可以搭配 binding 会好一点，即在路由管理配置中添加binding

// GetView 搭配Get.put()
class SignInScreen extends GetView<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  // SignInController signInController =
  //     Get.put<SignInController>(SignInController());

  @override
  Widget build(BuildContext context) {
    // 没有SignInController signInController这样声明变量时，需要写在build里面，不能写在上面
    Get.put(SignInController());
    // Get.lazyPut(() => SignInController());
    // 然后直接通过controller去调用方法 变量等
    return Obx(() => Text('${controller.counter}'));
  }
}
