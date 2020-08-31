import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar(
        child: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: str
            .split("")
            .map((e) => Text(
                  e,
                  textScaleFactor: 2,
                ))
            .toList(),
      ),
    ));
  }
}
