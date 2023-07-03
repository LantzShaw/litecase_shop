/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.07.02
 * @Description: TODO
 */

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  final pages = [
    Container(
      color: Colors.red,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('On boarding screen'),
          Text('hello world'),
          Text('hehei')
        ],
      ),
    ),
    Container(
      color: Colors.blue,
      child: Column(
        children: [],
      ),
    ),
    Container(
      color: Colors.green,
      child: Column(
        children: [],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            onPageChangeCallback: onPageChangeCallback,
          ),
          Positioned(
            bottom: 20.0,
            child: OutlinedButton(
              onPressed: () {
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.black26,
                ),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10.0),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color(0xffff4400),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            child: TextButton(
              onPressed: () {
                controller.jumpToPage(page: 2);
              },
              child: Text(
                'skip',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: pages.length,
              effect: ExpandingDotsEffect(
                dotHeight: 10.0,
                activeDotColor: Colors.red,
              ),
              // effect: WormEffect(
              //   activeDotColor: Colors.red,
              //   dotHeight: 10.0,
              //   type: WormType.normal,
              // ),
            ),
          )
        ],
      ),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
