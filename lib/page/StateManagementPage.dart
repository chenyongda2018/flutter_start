import 'package:flutter/material.dart';
import 'package:flutter_start/widget/ParentControlStateWidget.dart';
import 'package:flutter_start/widget/SelftControllStateWidget.dart';

class StateManagementPage extends StatefulWidget {
  @override
  _StateManagementPageState createState() => _StateManagementPageState();
}

class _StateManagementPageState extends State<StateManagementPage> {
  bool _active = false;

  void _switchActiveState(bool newState) {
    setState(() {
      _active = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SelfControlStateWidget(),
            ParentControlStateWidget(
              active: _active,
              onChanged: _switchActiveState,
            ),
          ],
        ),
      ),
    );
  }
}
