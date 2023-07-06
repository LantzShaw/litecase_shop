/**
 * @Author: Lantz
 * @Email: lantzshaw@163.com
 * @Date: 2023.06.09
 * @Description: TODO
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/controllers/sign_in.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  // SignInController signInController =
  //     Get.put<SignInController>(SignInController());

  // ProfileController profileController =
  //     Get.put<ProfileController>(ProfileController());

  // Get.lazyPut<ProfileController>(() => ProfileController());

  // 即使不使用控制器实例也会被创建
  // tag将用于查找具有标签名称的实例,可以用于创建多个实例的时候进行区分
  // 控制器在不使用时被处理，permanent如果永久为真，则实例将在整个应用程序中保持活动状态,不会被释放
  // MyController myController = Get.put(MyController(), permanent: true);
  // MyController myController = Get.put(MyController(), tag: "instancel", permanent: true);

  // 实例将在使用时创建(懒加载)
  // 它类似于'permanent'，区别在于实例在不被使用时被丢弃
  // 但是当它再次需要使用时，get 将重新创建实例
  // Get.lazyPut(()=> MyController());
  // Get.lazyPut(()=> MyController(), tag: "instancel");

  // Get.put 异步版本
  // Get.putAsync<MyController>(() async  => await MyController());

  // 每次都将返回一个新的实例
  // Get.create<MyController>(() => MyController());

  SignInController signInController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Text('$signInController.counter.value')),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () {
            signInController.increase();
          },
          child: const Text('+1'),
        )
      ],
    );
  }
}
