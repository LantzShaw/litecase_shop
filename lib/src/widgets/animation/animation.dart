/// @Author: think
/// @Email: TODO
/// @Date: 2023.07.07
/// @Description: TODO

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/widgets/animation/animation_controller.dart';
import 'package:litecase_shop/src/widgets/animation/animation_model.dart';

class TAnimation extends StatelessWidget {
  TAnimation({
    Key? key,
    required this.duration,
    required this.child,
    this.animationPosition,
  }) : super(key: key);

  final int duration;
  final TAnimationController controller =
      Get.put<TAnimationController>(TAnimationController());
  final TAnimationPosition? animationPosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        top: controller.animation.value
            ? animationPosition!.topAfter
            : animationPosition!.topBefore,
        left: controller.animation.value
            ? animationPosition!.leftAfter
            : animationPosition!.leftBefore,
        bottom: controller.animation.value
            ? animationPosition!.bottomAfter
            : animationPosition!.bottomBefore,
        right: controller.animation.value
            ? animationPosition!.rightAfter
            : animationPosition!.rightBefore,
        child: AnimatedOpacity(
          opacity: controller.animation.value ? 1 : 0,
          duration: Duration(milliseconds: 1600),
          child: child,
        ),
        duration: Duration(milliseconds: 1600),
      ),
    );
  }
}
