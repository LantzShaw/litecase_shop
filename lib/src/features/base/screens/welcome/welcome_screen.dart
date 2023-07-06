import 'package:flutter/material.dart';
import 'package:litecase_shop/src/constants/app_images.dart';
import 'package:litecase_shop/src/constants/app_texts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage(welcomeBackground),
            ),
            Column(
              children: [
                Text(
                  'Welcome to the litecase shop!',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const Text('This is a app')
              ],
            ),
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Expanded(
            //           child: OutlinedButton(
            //             onPressed: () {},
            //             style: OutlinedButton.styleFrom(
            //               foregroundColor: Colors.black,
            //               shape: RoundedRectangleBorder(),
            //               side: BorderSide(color: Colors.black),
            //               padding: EdgeInsets.symmetric(vertical: 12.0),
            //             ),
            //             child: const Text(register),
            //           ),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         Expanded(
            //           child: ElevatedButton(
            //             onPressed: () {},
            //             style: OutlinedButton.styleFrom(
            //               shape: RoundedRectangleBorder(),
            //               foregroundColor: Colors.white,
            //               side: BorderSide(color: Colors.black26),
            //               padding: EdgeInsets.symmetric(vertical: 12.0),
            //               backgroundColor: Colors.black,
            //             ),
            //             child: const Text(login),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // )
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: Colors.black,
                      side: const BorderSide(color: Colors.black),
                      splashFactory: NoSplash.splashFactory,
                      shadowColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      // backgroundColor: Colors.black,
                    ),
                    child: const Text(register),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black26),
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(login),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
