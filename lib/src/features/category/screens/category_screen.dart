/// @author think
/// @email TODO
/// @date: 2023.08.07
/// @description: TODO
/// @license: The MIT License

import 'package:flutter/material.dart';
import 'package:litecase_shop/src/features/category/widgets/grid_view_item.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  // TODO: implement context
  BuildContext get context => throw UnimplementedError();

  @override
  void deactivate() {
    // TODO: implement deactivate
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
  }

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  // TODO: implement mounted
  bool get mounted => throw UnimplementedError();

  @override
  void reassemble() {
    // TODO: implement reassemble
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
  }

  @override
  // TODO: implement widget
  StatefulWidget get widget => throw UnimplementedError();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<String> _tabList = ['推荐', '科技', '旅行', '电影', '购物', '教育', '家装', '亲子'];
  List<String> _gridViewItemList = [
    '水果',
    '外卖',
    '汽车',
    '旅游度假',
    '儿童',
    '美瞳',
    '生活',
    '手机',
    '洗衣'
  ];

  @override
  void initState() {
    super.initState();

    /// NOTE: tab 需要搭配 StatefulWidget 使用, 以下是固定写法
    tabController = TabController(length: _tabList.length, vsync: this);
  }

  List<Widget> _buildTabs() {
    return _tabList.map((item) => Tab(text: item)).toList();
  }

  TabBarView _buildTabBarView() {
    return TabBarView(
      physics: BouncingScrollPhysics(),
      controller: tabController,
      children: _tabList.map((item) => Text(item)).toList(),
    );
  }

  List<GridViewItem> _buildGridViewItemList() {
    return _gridViewItemList.map((item) => GridViewItem(label: item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TabBar(
          controller: tabController,
          isScrollable: true,
          labelColor: Colors.black,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.normal,
            color: Color(0xff666666),
            fontSize: 16.0,
          ),
          indicatorColor: Theme.of(context).primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 4.0,
          indicatorPadding: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 5.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          tabs: _buildTabs(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            children: _buildGridViewItemList(),
          ),
        ),
      ),
    );
  }
}
