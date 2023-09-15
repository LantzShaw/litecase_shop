/// @Author: think
/// @Email: TODO
/// @Date: 2023.07.05
/// @Description: TODO

import 'package:flutter/material.dart';
import 'package:litecase_shop/src/constants/app_colors.dart';
import 'package:litecase_shop/src/constants/app_sizes.dart';

class AppOutlinedButtonTheme {
  /// avoid create instances

  AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      splashFactory: NoSplash.splashFactory,
      shape: const RoundedRectangleBorder(),
      side: const BorderSide(
        color: tSecondaryColor,
      ),
      foregroundColor: tSecondaryColor,
      padding: const EdgeInsets.symmetric(
        vertical: tButtonHeight,
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      splashFactory: NoSplash.splashFactory,
    ),
  );
}
