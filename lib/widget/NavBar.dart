import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  NavBar({this.title, this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: 52,
        ),
        decoration: BoxDecoration(color: this.color, boxShadow: [
          BoxShadow(color: Colors.black54, offset: Offset(0, 3), blurRadius: 3),
        ]),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                color: color.computeLuminance() > 0.5
                    ? Colors.black87
                    : Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
