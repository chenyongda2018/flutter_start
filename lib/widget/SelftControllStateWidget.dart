import 'package:flutter/material.dart';

/// 状态由自己管理
class SelfControlStateWidget extends StatefulWidget {
  @override
  _SelfControlStateWidgetState createState() => _SelfControlStateWidgetState();
}

class _SelfControlStateWidgetState extends State<SelfControlStateWidget> {
  bool _active = false;

  void updateState() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(
            color: _active ? Colors.blue : Colors.grey),
        child: Text(_active ? "ACTIVE" : "INACTIVE",style: TextStyle(fontSize: 50,color: Colors.white),),
      ),
      onTap: updateState,
    );
  }
}
