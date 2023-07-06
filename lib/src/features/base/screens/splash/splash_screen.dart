/// @Author: think
/// @Email: TODO
/// @Date: 2023.06.28
/// @Description: TODO

import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   bool animated = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         AnimatedPositioned(
//           left: animated ? 0 : -30,
//           top: animated ? 0 : -20,
//           duration: const Duration(microseconds: 500),
//           child: const Text('hello'),
//         ),
//         AnimatedPositioned(
//           duration: const Duration(microseconds: 500),
//           child: AnimatedOpacity(
//             opacity: animated ? 1 : 0,
//             duration: const Duration(microseconds: 500),
//             child: const Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [Text('hello')],
//             ),
//           ),
//         ),
//         const Positioned(
//           left: 0,
//           top: defaultSize,
//           child: Image(
//             image: AssetImage(splashImage),
//           ),
//         )
//       ],
//     );
//   }
// }

// class SplashScreen extends StatelessWidget {
//   SplashScreen({Key? key}) : super(key: key);
//
//   SplashController splashController = Get.put(SplashController());
//
//   @override
//   Widget build(BuildContext context) {
//     splashController.startAnimation();
//
//     return const Placeholder();
//   }
// }

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('hello world');
  }
}
