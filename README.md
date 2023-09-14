# Litecase Shop App

Litecase shop application with flutter.

## Record

**brightness**
```text
var mediaQuery = MediaQuery.of(context);
var height = mediaQuery.size.height;
var brightness = mediaQuery.platformBrightness;
bool isDakMode = brightness == Brightness.dark;
```

**bottom sheet高度自适应与溢出处理**

```text
参考文章: https://juejin.cn/post/7081475476765556749
```

**上拉加载与上拉加载**
```text
参考文章: https://juejin.cn/post/6992513095956430862

RefreshIndicator(
    onRefresh: _onRefresh,
    child: ListView.builder(
      itemBuilder: _renderRow,
      itemCount: list.length,
      controller: _scrollController, 
    ),
),
```

**键盘溢出问题(overflow)**
```text
问题描述
当布局高度写死时，例如设置为屏幕高度，这时候键盘弹起页面上会出现布局overflow的提示
软键盘弹起后遮挡输入框
Stack 布局中跟随键盘抬起
原因：在flutter中，键盘弹起时系统会缩小Scaffold的高度并重建

1.解决overflow提示问题
把Scaffold的resizeToAvoidBottomInset属性设置为false，这样在键盘弹出时将不会resize(输入框抵住键盘)
把写死的高度改为 原高度 - MediaQuery.of(context).viewInsets.bottom，键盘弹出时布局将重建，而这个MediaQuery.of(context).viewInsets.bottom变量在键盘弹出前是0，键盘弹起后的就是键盘的高度
2.遮挡输入框问题
将输入框放进可滚动的Widget中(例如SingleChildScrollView)即可，当输入框获取焦点后，系统会自动将它滑动到可视区域.

https://www.jianshu.com/p/742257cd4bad
```

**ElevatedButton样式设置**

```text
            
/// InputBorder.none 无下划线
/// OutlineInputBorder 上下左右 都有边框
/// UnderlineInputBorder 只有下边框  默认使用的就是下边框
// border: UnderlineInputBorder(
//   borderSide: BorderSide(
//     width: 1.0,
//     color: Color(0xFFF2F2F2),
//   ),
// ),


// 使用ButtonStyle
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(Colors.red),
// padding: MaterialStateProperty.all(EdgeInsets.all(50)),
// textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30),),),

// style: ElevatedButton.styleFrom(
// elevation: 0,
// enableFeedback: false,
// splashFactory: NoSplash.splashFactory,
// ),
```

**TextField**

```text
TextField(
/// 键盘类型
// keyboardType: TextInputType.number,
/// 遮掩文本
// obscureText: true,
// controller: ,
onChanged: (value) {
print(value);
},
controller: textEditingController,
cursorColor: Theme.of(context).primaryColor,
decoration: InputDecoration(
enabledBorder: const UnderlineInputBorder(
  borderSide: BorderSide(
    color: Color(0xFFE5E3E3),
    width: 1.0,
  ),
),
focusedBorder: UnderlineInputBorder(
  borderSide: BorderSide(
    color: Theme.of(context).primaryColor,
    width: 1.0,
  ),
),
hintText: '请输入手机号',
hintStyle: const TextStyle(
  color: Color(0xffcccccc),
),
),
)
```

**设置状态栏颜色**
```text
https://blog.csdn.net/qq_16251833/article/details/116293386
方式一: 依赖appbar(只有设置了appbar才能设置)
Scaffold(
  appBar: AppBar(
    title: Text("开发者菜单"),
    titleTextStyle: TextStyle(color: Colors.white),
            // 配置导航栏图标的显示模式
    brightness: Brightness.dark,
  ),
);

Scaffold(
appBar: AppBar(
    backgroundColor: Colors.white,
    systemOverlayStyle: const SystemUiOverlayStyle(
      // 设置状态栏的背景颜色
      statusBarColor: Colors.white,
      // 状态栏的文字的颜色
      statusBarIconBrightness: Brightness.dark,
    ),
    elevation: 0,
  ),
)


方式二: 没有appbar可以直接设置状态栏样式
 AnnotatedRegion(
  child: Scaffold(),
  value: SystemUiOverlayStyle.dark,
);

注意点：
AppBar 配置为配置 appBar 的样式，相应的，其状态栏的图标就会调整为与 appBar 样式相反的样式

AnnotatedRegion 为直接配置 UI 样式，其状态栏样式与字面意思相同
```

**ListView**
```text
参考文章：https://blog.csdn.net/u010347226/article/details/108831723

ListView 的类型
ListView
ListView.builder
ListView.separated
ListView.custom

ListView的默认构造函数，显示的构造 List< Widget>，该方式适合于具有少量子元素的列表视图，因为这种方式需要将所有需要显示的子Widget 都提前构建好，而不是等到子 Widget 真正显示的时候再构建，即通过默认的构造函数构建的 ListView 没有应用基于 Sliver 的懒加载模型。
ListView.builder 利用 IndexedWidgetBuilder 按需构建子 Widget，适合列表项比较多( 或者无限 )的列表视图，因为构建器只有当子 Widget 真正需要显示的时候才会被构建，即使用 builder 方式构建的 ListView 支持基于 Sliver 的懒加载模型的。
ListView.separated 利用两个 IndexedWidgetBuilder: itemBuilder 根据需要构建子 Widget 和 separatorBuilder 构建子 Widget 之间的分割符子 Widget。此构造函数适用于具有固定数量的子 Widget 的列表视图。
ListView.custom 使用 SliverChildDelegate 构建，它提供了定制子模型的其它方面的能力，如 SliverChildDelegate 可以控制用于估算实际上不可见的子 Widget 的大小的算法。

SizedBox(
  height: 300.0,
  child: ListView( // 用于数量比较少
    scrollDirection: Axis.vertical, // 滚动方向
    physics: BouncingScrollPhysics(), // 设置IOS的滑动动画
    children: [
      Container(
        color: Colors.green,
        height: 100.0,
        child: const Text('hello'),
      ),
      Container(
        color: Colors.blue,
        height: 100.0,
        child: const Text('hello'),
      ),
      Container(
        color: Colors.green,
        height: 100.0,
        child: const Text('hello'),
      ),
      Container(
        color: Colors.blue,
        height: 100.0,
        child: const Text('hello'),
      ),
      Container(
        color: Colors.green,
        height: 100.0,
        child: const Text('hello'),
      ),
    ],
  ),
)

Container(
  height: 100.0,
  child: ListView.builder( // 用于数量较多
    physics: BouncingScrollPhysics(), // 设置成IOS滑动效果
    padding: EdgeInsets.all(30.0),
    itemBuilder: (context, index) {
      return Card(
        margin: EdgeInsets.all(0), // 设置card与card之间的间距
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '$index',
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
        ),
      );
    },
    itemCount: 10,
  ),
),

ListView.separated(
  itemBuilder: (context, position) {
    return ListItem();
  },
  separatorBuilder: (context, position) {
    return SeparatorItem();
  },
  itemCount: itemCount,
),


physics属性滑动效果
AlwaysScrollableScrollPhysics、BouncingScrollPhysics、NeverScrollableScrollPhysics

在你使用这些属性时，需要将itemview充满整个ListView才会出现对应的效果，特别是BouncingScrollPhysics，这是IOS上特有的回弹特性，但是在子view不足以填充满的时候设置这个属性是不会生效的，CustomScrollView这个组件中也会出现类似的问题，在下方列表填充不满时，slivers中的控件的联动特效会出现异常。

如果一定要在子view不够多的情况下实现回弹效果呢？只需要这样设置physics属性：
ListView.builder(itemBuilder: null,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
```

**GetX常用**
```text
SignInController signInController = Get.put<SignInController>(SignInController());
SignInController signInController = Get.find(); // NOTE: 只有先put才可以find, 否则会报错

在我们使用GetX状态管理器的时候，往往每次都是用需要手动实例化一个控制器，这样的话基本页面都需要实例化一次，这样就太麻烦了，而Binding 能解决上述问题，可以在项目初始化时把所有需要进行状态管理的控制器进行统一初始化，接下来看代码演示：
class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => SignUpController());
  }
}

GetX的状态管理可以分为这几种： GetBuilder、GetX、Obx、MixinBuilder

以及它们通用的Controller：GetXController

Get.offAllNamed('/second');
Get.offAndToNamed('/second');

getx service使用场景
https://viblo.asia/p/getx-flutter-using-getservice-part-5-Ljy5Vjjk5ra

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;
  bool _loadTheme() => _box.read(_key) ?? false;

  void saveTheme(bool isDarkMode) => _box.write(_key, isDarkMode);
  void changeTheme(ThemeData theme) => Get.changeTheme(theme);
  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Store',
      initialBinding: StoreBinding(),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: themeController.theme,
}
}

class Home extends GetView<StoreController> {
 Home({Key? key}) : super(key: key);
 final themeController = Get.find<ThemeController>();

 @override
 Widget build(BuildContext context) {
   return Scaffold(backgroundColor: AppColors.spaceCadet,
     appBar: AppBar(title: const Text("GetX Store"),
       actions: [IconButton(
           onPressed: () {
             if (Get.isDarkMode) {
               themeController.changeTheme(Themes.lightTheme);
               themeController.saveTheme(false);
             } else {
               themeController.changeTheme(Themes.darkTheme);
               themeController.saveTheme(true); }},
           icon: Get.isDarkMode
               ? const Icon(Icons.light_mode_outlined)
               : const Icon(Icons.dark_mode_outlined),),], ),
```

## Folder Structure 

闪屏页 - 广告页（广告） -  新用户引导页（轮播页面，介绍app使用） - 欢迎页（包含登录注册按钮）

**With Getx**
```text
.
|-- LICENSE
|-- README.md
|-- analysis_options.yaml
|-- android
|-- ios
|-- assets
|   |-- fonts
|   |-- images
|   |   |-- splash | splash_images
|   |-- icons
|   |-- svg
|   |-- videos
|   |-- audios
|   |-- logo
|-- lib
|   |-- main.dart
|   |-- src
|       |-- api
|       |   |-- authentication.dart
|       |-- constants
|       |   |-- app_caches.dart
|       |   |-- app_colors.dart
|       |   |-- app_images.dart | image_strings.dart
|       |   |-- app_sizes.dart
|       |   |-- app_texts.dart | text_strings.dart
|       |-- features
|       |-- |-- base/common/main
|       |   |   |-- screens
|       |   |   |   |-- splash
|       |   |   |   |   |-- splash_screen.dart 闪屏页 路由为 '/splash'
|       |   |   |   |-- on_boarding
|       |   |   |   |   |-- on_boarding_screen.dart  路由为 '/boarding'
|       |   |   |   |-- main
|       |   |   |   |   |-- main_screen.dart 含底部导航栏 路由为 '/'
|       |   |   |-- widgets
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- services
|       |   |-- home
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- widgets
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |-- profile
|       |   |   |-- bindings
|       |   |   |-- widgets
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |-- address
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   |-- widgets
|       |   |-- authentication
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |   |-- profile
|       |   |   |   |   |-- profile_screen.dart
|       |   |   |   |-- sign_in
|       |   |   |   |   |-- sign_in_screen.dart
|       |   |   |   |-- sign_up
|       |   |   |       |-- sign_up_screen.dart
|       |   |   |-- services
|       |   |   |-- widgets
|       |   |-- cart
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   |-- widgets
|       |   |-- checkout
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   |-- widgets
|       |   |-- orders
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   |-- widgets
|       |   |-- products
|       |       |-- bindings
|       |       |-- controllers
|       |       |-- models
|       |       |-- screens
|       |       |-- services
|       |       |-- widgets
|       |-- localization | i10n
|       |-- network | net | networking
|       |-- routes | routing
|       |   |-- app_pages.dart
|       |   |-- app_routes.dart
|       |-- themes
|       |   |-- app_dark_theme.dart
|       |   |-- app_light_theme.dart
|       |   |-- app_theme.dart
|       |   |-- app_text_theme.dart
|       |-- utils
|       |-- widgets
|-- linux
|-- litecase_shop.iml
|-- macos
|-- pubspec.lock
|-- pubspec.yaml
|-- test
|   |-- widget_test.dart
|-- web
|-- windows

// base/common ->
// splash 闪屏页 '/splash'
// main '/'
// 引导页

// core -> 
// cart -> cart_screen.dart、cart_detail_screen.dart
// category -> ‘/category'
// product  -> '/product'
// order -> 订单 '/order' 
// checkout -> 付款 '/checkout'
// home -> 首页 '/home'
// settings -> 设置 '/settings'
// profile -> 我的 '/profile’

// authentication ->
// signIn
// signUp
// forget_password


home
    logic.dart
    state.dart
    view.dart

是否可以这样拆分
features
    authentication
        screens
            signIn
            signUp
    core
       checkout
            screens
       orders
            screens
       home
            screens
       profile
            screens
       cart
            screens
    base 
       screens
            main  '/' 
            splash '/splash'
            guide '/guide'
            

参考文章: https://github.com/akaanuzman/shopping_app/tree/master/lib/core
core
    base
        view
            base_view.dart
        viewModel
            base_view_model.dart
    
features
    home
        model - 模型
            home_model.dart
        service - 定义一些api
            product_service.dart
        view - 视图
            home_view.dart
        viewModel - 调用service、视图 逻辑
            home_view_model.dart
```

**With Bloc**
```text
参考文章: https://a-ghamdii.medium.com/architect-your-flutter-app-the-clean-way-with-bloc-703e6a8c2d23
https://duskosavic.com/blog/flutter/how-to-structure-flutter-app-when-using-bloc-pattern/

features
    home
        bloc
            home_bloc.dart
            home_event.dart
            home_state.dart
        widgets
        screen 或者直接 home_screen.dart
            home_screen.dart
    authentication
        bloc
            

shared            
features
    common
        presentation
            screens
            blocs
            widgets
        data
        domain  
    auth
        presentation
            blocs
            screens
            widgets
        domain
        data
    home
        presentation
            bloc
                home_bloc.dart
                home_event.dart
                home_state.dart
            widgets
            home_screen.dart
        domain
            usecase
                home_usecase.dart
            entity
                home_entity.dart
        data
            dto
                order_response.dart
            repository
                order_repository.dart
            data_sources
                order_remote_data_source.dart
                order_local_data_source.dart
            
```

```text
flutter create --template=package packageName

flutter pub publish --dry-run

flutter pub publish
```

```text
FlutterBoost
新一代Flutter-Native混合解决方案。 FlutterBoost是一个Flutter插件，它可以轻松地为现有原生应用程序提供Flutter混合集成方案
```