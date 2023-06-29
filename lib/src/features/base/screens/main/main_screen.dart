/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/base/controllers/main.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NOTE: 只有使用GetView才可以这么用
    // Get.put(MainController());

    final List<Widget> _screens = [];

    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: _screens[controller.currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: controller.changeIndex,
        currentIndex: controller.currentIndex.value,
        items: const [
          BottomNavigationBarItem(
            label: '首页',
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
          ),
          BottomNavigationBarItem(
            label: '分类',
            icon: FaIcon(
              FontAwesomeIcons.compass,
            ),
          ),
          BottomNavigationBarItem(
            label: '消息',
            icon: FaIcon(
              FontAwesomeIcons.message,
            ),
          ),
          BottomNavigationBarItem(
            label: '购物车',
            icon: FaIcon(
              FontAwesomeIcons.rocket,
            ),
          ),
          BottomNavigationBarItem(
            label: '我的',
            icon: FaIcon(
              FontAwesomeIcons.user,
            ),
          ),
        ],
      ),
    );
  }
}
