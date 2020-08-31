import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: _buildItem,
      itemCount: 20,
      separatorBuilder: _separatorBuildItem,
    );
  }

  Widget _buildItem(BuildContext context, int position) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text("球员${position + 1}"),
      subtitle: Text("拜仁慕尼黑"),
    );
  }

  Widget _separatorBuildItem(BuildContext context, int position) {
    return position % 2 == 0
        ? Divider(
            color: Colors.blue,
            thickness: 3,
          )
        : Divider(
            color: Colors.red,
      thickness: 3,
          );
  }
}
