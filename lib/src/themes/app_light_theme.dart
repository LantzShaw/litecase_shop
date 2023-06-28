/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.10
 * @Description: TODO
 */

import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 16.0,
    ),
  ),
  useMaterial3: true,
  brightness: Brightness.light,
);
