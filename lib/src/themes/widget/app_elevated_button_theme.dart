/// @Author: think
/// @Email: TODO
/// @Date: 2023.07.05
/// @Description: TODO

import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      splashFactory: NoSplash.splashFactory,
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      splashFactory: NoSplash.splashFactory,
    ),
  );
}
