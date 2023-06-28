/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.10
 * @Description: TODO
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static final screens = [];

  // int _currentPage = 0;

  void _onTap(currentIndex) {
    print(currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0, // 沉浸式状态栏，然后可以在下面body里面设置安全区域SafeArea
        backgroundColor: Colors.transparent, // 设置状态栏的背景色
        systemOverlayStyle: SystemUiOverlayStyle.light, // 设置状态栏的文字颜色
      ),
      body: Container(
        child: Text('hello world'),
      ),
      // body: screens[0],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   onTap: _onTap,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //       ),
      //       label: '首页',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.category,
      //       ),
      //       label: '分类',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.message,
      //       ),
      //       label: '消息',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_cart,
      //       ),
      //       label: '购物车',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_circle,
      //       ),
      //       label: '我的',
      //     ),
      //   ],
      // ),
    );
  }
}
