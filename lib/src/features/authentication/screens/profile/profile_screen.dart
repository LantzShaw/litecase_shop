import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

//滚动最大距离
const APPBAR_SCROLL_OFFSET = 100;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List _imageUrl = [
    'https://dimg04.c-ctrip.com/images/zg0o180000014yl20DEA4.jpg',
    'https://dimg04.c-ctrip.com/images/zg0f180000014vrut370F.jpg',
    'https://dimg04.c-ctrip.com/images/zg0n18000001528jhD6B2.jpg'
  ];
  double appBarAlpha = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _onScroll(offset) {
    double alpha = offset / APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    } else if (alpha > 1) {
      alpha = 1;
    }
    setState(() {
      appBarAlpha = alpha;
    });
  }

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
                  _onScroll(scrollNotification.metrics.pixels);
                }
                return true;
              },
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 110,
                    child: Swiper(
                      // item的数量
                      itemCount: _imageUrl.length,
                      // 自动播放
                      autoplay: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          _imageUrl[index],
                          fit: BoxFit.fill,
                        );
                      },
                      // banner上添加指示器
                      pagination: SwiperPagination(),
                    ),
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
          // 通过Opacity的透明度来控制appBar的显示与隐藏
          // opacity:透明度，0.0 到 1.0，0.0表示完全透明，1.0表示完全不透明
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("首页"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
