
import 'package:flutter/material.dart';

class PageItemRoute extends StatelessWidget {


  final String routeName;
  final String title;

  static const Color ITEM_COLOR = Colors.blueGrey;
  static const double ITEM_HEIGHT = 50;
  static const double ITEM_FONT_SIZE = 28;

  PageItemRoute({@required this.routeName,@required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6,horizontal: 16),
        height: ITEM_HEIGHT,
        color: ITEM_COLOR,
        alignment: Alignment.center,
        child: Text(
          title,
          style:
          TextStyle(color: Colors.white, fontSize: ITEM_FONT_SIZE),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}