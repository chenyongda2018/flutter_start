import 'dart:async';

import 'package:flutter/material.dart';

class ListViewTestTwo extends StatefulWidget {
  @override
  _ListViewTestTwoState createState() => _ListViewTestTwoState();
}

class _ListViewTestTwoState extends State<ListViewTestTwo> {
  var _dataList = [];
  var _loadingTag = "###LOADING###";

  @override
  void initState() {
    super.initState();
    _updateData();

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _buildItem,itemCount: _dataList.length,);
  }

  Widget _buildItem(BuildContext context, int position) {
    if (_dataList[position] == _loadingTag) {
      if (_dataList.length < 100) {
        _updateData();
        //loading动画
        return LoadingItemWidget();
      } else {
        //没有更多数据
        return NoMoreItemWidget();
      }
    } else {
      return ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.blue,
        ),
        title: Text(_dataList[position]),
      );
    }
  }

  void _updateData() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        for (var i = 15; i < 25; i++) {
          _dataList.add("球员${i}");
        }
      });
    });
  }
}

class NoMoreItemWidget extends StatelessWidget {
  const NoMoreItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.center,
      child: SizedBox(
        height: 24,
        child: Text(
          "没有更多了",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

class LoadingItemWidget extends StatelessWidget {
  const LoadingItemWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      alignment: Alignment.center,
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
