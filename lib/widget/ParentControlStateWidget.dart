import 'package:flutter/material.dart';

/// 状态由父widget 管理
class ParentControlStateWidget extends StatelessWidget {
  ParentControlStateWidget(
      {Key key, this.active = false, @required this.onChanged})
      : super(key: key);

  bool active;
  final ValueChanged<bool> onChanged;


  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(
            color: active ? Colors.blue : Colors.grey),
        child: Text(active ? "ACTIVE" : "INACTIVE",style: TextStyle(fontSize: 50,color: Colors.white),),
      ),
      onTap: _handleTap,
    );
  }
}
