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
|       |-- app.dart
|       |-- constants
|       |   |-- app_colors.dart
|       |   |-- app_images.dart
|       |   |-- app_sizes.dart
|       |   `-- app_texts.dart
|       |-- features
|       |   |-- address
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   `-- widges
|       |   |-- authentication
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |   |-- profile
|       |   |   |   |   `-- profile_screen.dart
|       |   |   |   |-- sign_in
|       |   |   |   |   `-- sign_in_screen.dart
|       |   |   |   `-- sign_up
|       |   |   |       `-- sign_up_screen.dart
|       |   |   |-- services
|       |   |   `-- widges
|       |   |-- cart
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   `-- widges
|       |   |-- checkout
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   `-- widges
|       |   |-- orders
|       |   |   |-- bindings
|       |   |   |-- controllers
|       |   |   |-- models
|       |   |   |-- screens
|       |   |   |-- services
|       |   |   `-- widges
|       |   `-- products
|       |       |-- bindings
|       |       |-- controllers
|       |       |-- models
|       |       |-- screens
|       |       |-- services
|       |       `-- widges
|       |-- localization
|       |-- network
|       |-- routes
|       |   |-- app_pages.dart
|       |   `-- app_routes.dart
|       |-- themes
|       |   |-- app_dark_theme.dart
|       |   `-- app_light_theme.dart
|       |-- utils
|       |-- widgets
|-- linux
|-- litecase_shop.iml
|-- macos
|-- pubspec.lock
|-- pubspec.yaml
|-- test
|   `-- widget_test.dart
|-- web
|-- windows
```

