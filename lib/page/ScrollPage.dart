import 'package:flutter/material.dart';
import 'package:flutter_start/page/ListViewPage.dart';
import 'package:flutter_start/widget/PageRoute.dart';

import 'SingleChildScrollViewPage.dart';

class ScrollPage extends StatefulWidget {
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage>
    with SingleTickerProviderStateMixin {
  var _tabController;

  var _tabs = [
    "SingleChildScrollView",
    "ListView",
    "GridView",
    "CustomScrollView"
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("可滚动组件"),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: _tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SingleChildScrollViewPage(),
          ListViewPage(),
          SingleChildScrollViewPage(),
          SingleChildScrollViewPage(),
        ],
      ),
    );
  }
}
