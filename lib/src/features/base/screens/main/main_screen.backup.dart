/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/base/controllers/main.dart';
import 'package:litecase_shop/src/features/cart/screens/cart/cart_screen.dart';
import 'package:litecase_shop/src/features/category/screens/category_screen.dart';
import 'package:litecase_shop/src/features/home/screens/home/home_screen.dart';

class MainScreen extends GetView<MainController> {
  MainScreen({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  List<BottomNavigationBarItem> _buildBottomNavigationBarItem() {
    var tempArrayList;

    if (tempArrayList == null) {
      List<Map<String, dynamic>> tabItems = [
        {
          "label": '首页',
          "codePoint": 0xe634,
        },
        {
          "label": '分类',
          "codePoint": 0xe658,
        },
        {
          "label": '消息',
          "codePoint": 0xe651,
        },
        {
          "label": '购物车',
          "codePoint": 0xe661,
        },
        {
          "label": '我的',
          "codePoint": 0xe640,
        }
      ];

      tempArrayList = tabItems.map((item) {
        return BottomNavigationBarItem(
          label: item["label"],
          icon: Icon(
            // &# 换成 0
            IconData(
              item['codePoint'],
              fontFamily: 'LitecaseFont',
            ),
          ),
        );
      });
    }

    return tempArrayList;
  }

  @override
  Widget build(BuildContext context) {
    // NOTE: 只有使用GetView才可以这么用
    // Get.put(MainController());

    final List<Widget> screens = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
    ];

    return Obx(
      () => Scaffold(
        body: PageView(
          controller: _pageController,
          children: screens,
          onPageChanged: controller.changeIndex,
          physics: NeverScrollableScrollPhysics(),
        ),
        // body: screens[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeIndex,
          currentIndex: controller.currentIndex.value,
          items: const [
            // iconfont 的使用
            BottomNavigationBarItem(
              label: '首页',
              icon: Icon(
                // &# 换成 0
                IconData(
                  0xe634,
                  fontFamily: 'LitecaseFont',
                ),
              ),
              activeIcon: Icon(
                IconData(
                  0xe634,
                  fontFamily: 'LitecaseFont',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '分类',
              icon: Icon(
                IconData(
                  0xe658,
                  fontFamily: 'LitecaseFont',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '消息',
              icon: Icon(
                IconData(
                  0xe651,
                  fontFamily: 'LitecaseFont',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '购物车',
              icon: Icon(
                IconData(
                  0xe661,
                  fontFamily: 'LitecaseFont',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '我的',
              icon: Icon(
                IconData(
                  0xe640,
                  fontFamily: 'LitecaseFont',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPageChanged(int index) {
    print('$index');
  }
}
