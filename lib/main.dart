import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/localization/message.dart';
import 'package:litecase_shop/src/routes/app_pages.dart';
import 'package:litecase_shop/src/themes/app_theme.dart';

Future<void> main() async {
  // await initServices();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const LisecaseShopApp());
}

void initServices() async {
  // Get.putAsync(() => )
}

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
      themeMode: ThemeMode.system, // 默认跟随系统
      theme: AppTheme.lightTheme, // 浅色主题
      darkTheme: AppTheme.darkTheme, // 暗色主题
      // home: MyApp(),
      initialRoute: '/category',
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
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
        title: const Text('首页'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _showSnackBar,
              child: const Text('Click Me!'),
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
