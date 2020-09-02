import 'package:flutter/material.dart';
import 'package:flutter_start/widget/MyButton.dart';
import 'package:flutter_start/widget/MyPaintWidget.dart';

class CustomViewPage extends StatefulWidget {
  @override
  _CustomViewPageState createState() => _CustomViewPageState();
}

class _CustomViewPageState extends State<CustomViewPage>
    with SingleTickerProviderStateMixin {
  var _tabController;

  var _tabs = [
    "组合Widget",
    "自绘",
    "实现RenderObject",
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
        title: Text("Custom View"),
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
          Center(
            child: Column(
              children: <Widget>[
                MyButton(
                  colors: [Colors.red, Colors.blue, Colors.blueGrey],
                  height: 50,
                  width: 100,
                  radius: BorderRadius.circular(8),
                  onTap: () {
                    print("onclick");
                  },
                  child: Text("LOGIN"),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: CustomPaint(
                painter: MyPainter(),
                size: Size(400, 400),
              ),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                MyButton(
                  colors: [Colors.red, Colors.blue],
                  height: 50,
                  width: 100,
                  radius: BorderRadius.circular(8),
                  onTap: () {
                    print("onclick");
                  },
                  child: Text("LOGIN"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
