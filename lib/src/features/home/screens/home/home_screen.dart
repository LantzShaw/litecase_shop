import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/home/controllers/home.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '首页',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(16.0),
                // borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              ),
              child: const TextField(
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: 160,
                maxWidth: 300.0,
              ),
              // height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    color: Colors.green,
                    height: 40.0,
                    width: 200.0,
                    child: const Text('hello'),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 40.0,
                    width: 100.0,
                    child: const Text('hello'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40.0,
                    width: 100.0,
                    child: const Text('hello'),
                  ),
                ],
              ),
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                physics: BouncingScrollPhysics(), // 设置成IOS滑动效果
                padding: EdgeInsets.all(30.0),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.red,
                    // margin: EdgeInsets.all(0), // 设置card与card之间的间距
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '$index',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  children: [
                    Text('hello'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
