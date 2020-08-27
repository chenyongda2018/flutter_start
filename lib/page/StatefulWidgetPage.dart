import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatefulWidget {

  StatefulWidgetPage({
    Key key,
    this.initialCount = 0
  }) : super(key: key);

  final int initialCount;

  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }

}

class _MyState extends State<StatefulWidgetPage> {

  int _count;

  @override
  void initState() {
    super.initState();
    _count = widget.initialCount;
    print("initState");
  }

  void _inCreasement() {
    setState(() {
      _count ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("StatefulWidget Demo"),),
      body: Center(
        child: Container(child: Text("$_count"),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _inCreasement),
    );
  }

  @override
  void didUpdateWidget(StatefulWidgetPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }


}