/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.28
 * @Description: TODO
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/constants/app_images.dart';
import 'package:litecase_shop/src/constants/app_sizes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animated = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          left: animated ? 0 : -30,
          top: animated ? 0 : -20,
          duration: const Duration(microseconds: 500),
          child: const Text('hello'),
        ),
        AnimatedPositioned(
          duration: const Duration(microseconds: 500),
          child: AnimatedOpacity(
            opacity: animated ? 1 : 0,
            duration: const Duration(microseconds: 500),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text('hello')],
            ),
          ),
        ),
        const Positioned(
          left: 0,
          top: defaultSize,
          child: Image(
            image: AssetImage(splashImage),
          ),
        )
      ],
    );
  }

  Future<void> startAnimation() async {
    Future.delayed(const Duration(microseconds: 500));
    setState(() {
      animated = true;
    });
    Future.delayed(const Duration(milliseconds: 5000));
    Get.toNamed('/');
  }
}
