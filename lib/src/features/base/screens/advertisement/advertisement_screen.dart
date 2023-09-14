/// @author think
/// @email TODO
/// @date 2023.09.14
/// @description TODO
/// @license The MIT License

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/base/controllers/advertisement.dart';

class AdvertisementScreen extends GetView<AdvertisementController> {
  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ElevatedButton(
          child: Text("Skip"),
          onPressed: () {
            controller.navigateTo();
          },
        ),
      ),
    );
  }
}
