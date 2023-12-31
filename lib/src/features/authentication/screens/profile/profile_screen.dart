import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:litecase_shop/src/features/authentication/controllers/profile.dart';

class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            // 监听列表的滚动
            child: NotificationListener(
              // 监听滚动后要调用的方法
              // ignore: missing_return
              onNotification: (scrollNotification) {
                // 只有当是更新状态下和是第0个child的时候才会调用
                if (scrollNotification is ScrollUpdateNotification &&
                    scrollNotification.depth == 0) {
                  controller.onScroll(scrollNotification.metrics.pixels);
                }
                return true;
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 110,
                    child: Swiper(
                      // item的数量
                      itemCount: controller.imageUrl.length,
                      // 自动播放
                      autoplay: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          controller.imageUrl[index],
                          fit: BoxFit.fill,
                        );
                      },
                      // banner上添加指示器
                      pagination: SwiperPagination(),
                    ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('1'),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('2'),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('3'),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('4'),
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('5'),
                      )
                    ],
                  ),
                  Container(
                    height: 800,
                    child: ListTile(
                      title: Text("哈哈"),
                    ),
                  )
                ],
              ),
            ),
          ),
          Obx(
            () => AnimatedOpacity(
              opacity: controller.appBarAlpha.value,
              duration: Duration(microseconds: 300),
              child: Container(
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: Text('首页'),
                  ),
                ),
              ),
            ),
          ),
          // 通过Opacity的透明度来控制appBar的显示与隐藏
          // opacity:透明度，0.0 到 1.0，0.0表示完全透明，1.0表示完全不透明
          // Opacity(
          //   opacity: appBarAlpha,
          //   child: Container(
          //     height: 80,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //     ),
          //     child: Center(
          //       child: Padding(
          //         padding: EdgeInsets.only(top: 20),
          //         child: Text("首页"),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
