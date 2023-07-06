/**
 * @Author: think
 * @Email: TODO
 * @Date: 2023.06.09
 * @Description: TODO
 */

import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final ScrollController _scrollController = ScrollController();
  bool showButton = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.offset > 80) {
        setState(() {
          showButton = false;
        });
      } else {
        setState(() {
          showButton = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // Visibility({
    // Key key,
    // @required this.child,
    // this.replacement = const SizedBox.shrink(),//不可见时显示的组件（当maintainState=false）
    // this.visible = true,//子组件是否可见，默认true（可见）
    // this.maintainState = false,//不可见时是否维持状态，默认为false
    // this.maintainAnimation = false,//不可见时，是否维持子组件中的动画，默认false
    // this.maintainSize = false,//不可见时是否留有空间，默认false，
    // this.maintainSemantics = false,//不可见时是否维持它的语义，默认false
    // this.maintainInteractivity = false,//不可见时是否具有交互性，默认false
    // })
    // Visibility 若想要在隐藏状态下还保留空间，需要同时设置 maintainAnimation、maintainSize 为 true。

    // Offstage({
    //   Key key,
    //   this.offstage = true, // 子组件是否可见，默认true（隐藏）
    //   Widget child
    // })

    return Scaffold(
      body: Column(
        children: [
          // 显示隐藏按钮
          if (showButton)
            const Text('hello')
          else if (!showButton)
            const Text('buub'),
          Visibility(
            visible: showButton,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('button'),
            ),
          ),
          showButton ? const Text('show') : const Text('next text'),
          // 还是会占位 相当于invisible
          Opacity(
            opacity: showButton ? 1.0 : 0.0,
            child: const Padding(
              padding: EdgeInsets.all(30),
              child: Text('Now you see me, now you don\'t!'),
            ),
          ),
          AnimatedOpacity(
            opacity: showButton ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 50),
          ),
          // offstage为true时表示不渲染，也不占位，相当于gone
          Offstage(
            offstage: showButton,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Text('hello world'), Text('hello flutter')],
            ),
          ),
          // 滚动事件
          // 应用场景:
          // 实现下拉刷新和上拉加载更多
          // 根据滚动位置切换应用栏样式
          // 实现懒加载列表，根据滚动位置动态加载数据
          // 参考文章: https://juejin.cn/post/7250284063209865274
          FloatingActionButton(
            onPressed: () {
              _scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: const Icon(Icons.arrow_upward),
          ),
          ListView(
            controller: _scrollController,
            children: [
              SizedBox(
                height: 100.0,
                width: width,
                child: const Text('First Container'),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 100.0,
                width: width,
                child: const Text('Second Container'),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 100.0,
                width: width,
                child: const Text('Third Container'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
