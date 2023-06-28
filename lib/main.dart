import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/localization/message.dart';
import 'package:litecase_shop/src/routes/app_pages.dart';

Future<void> main() async {
  // await initServices();

  runApp(const LisecaseShopApp());
}

void initServices() async {
  // Get.putAsync(() => )
}

// class

class LisecaseShopApp extends StatelessWidget {
  const LisecaseShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // initialBinding: AllBinding(), // 全局绑定的getx Controller
      defaultTransition: Transition.leftToRight,
      translations: Message(),
      // locale: const Locale('zh', 'CN'),
      // locale: ui.window.locale, // 如何读取系统语言 即将弃用
      locale: Get.locale,
      fallbackLocale: const Locale('en', 'US'), // 添加一个回调语言选项，以备上面指定的语言翻译不存在
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MyApp(),
      initialRoute: '/signUp',
      getPages: AppPages.routes,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void _onTap(int currentIndex) {
    print('$currentIndex');
  }

  void _showSnackBar() {
    Get.defaultDialog(
      title: '温馨提示',
      cancel: ElevatedButton(
        onPressed: () {
          print('取消');
        },
        child: const Text('取消'),
      ),
      confirm: ElevatedButton(
        onPressed: () {
          print('确定');
        },
        child: const Text('确定'),
      ),
      middleText: '确定要删除吗?',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('首页'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _showSnackBar,
              child: Text('Click Me!'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: '分类',
          ),
        ],
      ),
    );
  }
}
