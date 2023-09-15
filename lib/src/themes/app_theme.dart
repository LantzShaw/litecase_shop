/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:flutter/material.dart';
import 'package:litecase_shop/src/themes/widget/app_elevated_button_theme.dart';
import 'package:litecase_shop/src/themes/widget/app_outlined_button_theme.dart';
import 'package:litecase_shop/src/themes/widget/app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    primaryColor: const Color(0xFF34C759),
    shadowColor: Colors.transparent,
    splashColor: Colors.transparent, // 点击时的高亮效果设置为透明
    highlightColor: Colors.transparent, // 长按时的扩散效果设置为透明
    splashFactory: NoSplash.splashFactory, // 去除水波纹效果 ElevatedButton好像不起效果
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF34C759),
    shadowColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory, // 去除水波纹效果
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
