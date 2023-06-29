# Litecase Shop App

Litecase shop application with flutter.

## Record

**Getx常用**
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

getx service使用场景
https://viblo.asia/p/getx-flutter-using-getservice-part-5-Ljy5Vjjk5ra
```

## Folder Structure 

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
|   |-- icons
|   |-- svgs
|   |-- videos
|   |-- audios
|   |-- logo
|-- lib
|   |-- main.dart
|   |-- src
|       |-- constants
|       |   |-- app_colors.dart
|       |   |-- app_images.dart | images_strings.dart
|       |   |-- app_sizes.dart
|       |   |-- app_texts.dart | text_strings.dart
|       |-- features
|       |-- |-- base/common/main
|       |   |   |-- screens
|       |   |   |   |-- splash
|       |   |   |   |   `-- splash_screen.dart 闪屏页 路由为 '/splash'
|       |   |   |   |-- main
|       |   |   |   |   `-- main_screen.dart 含底部导航栏 路由为 '/'
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
|       |-- localization
|       |-- network | net
|       |-- routes
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
```

**With Bloc**
```text
参考文章: https://a-ghamdii.medium.com/architect-your-flutter-app-the-clean-way-with-bloc-703e6a8c2d23

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
            
            
features
    auth
        presentation
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
