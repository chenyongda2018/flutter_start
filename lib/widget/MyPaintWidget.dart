import 'dart:ui';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {


  @override
  void paint(Canvas canvas, Size size) {
    double pWidth = size.width / 15;
    double pHeight = size.height / 15;

    var painter = Paint()
      ..isAntiAlias = true
      ..color = Color(0x77cdb175)
      ..style = PaintingStyle.fill;

    canvas.drawRect(Offset.zero & size, painter);
    painter
    ..style = PaintingStyle.stroke
    ..color = Colors.black54
    ..strokeWidth = 1.0;

    for (int i = 0; i < 15; i++) {
      double dy = pHeight * i;
      canvas.drawLine(Offset(0,dy), Offset(size.width,dy), painter);
    }

    for (int i = 0; i < 15; i++) {
      double dx = pWidth * i;
      canvas.drawLine(Offset(dx,0), Offset(dx,size.height), painter);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
