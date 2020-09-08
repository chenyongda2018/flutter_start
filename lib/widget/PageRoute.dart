
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/chapter_9_animation/animation_page.dart';
import 'package:flutter_start/route_map.dart';

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
//        Navigator.push(context,PageRouteBuilder(
//          transitionDuration: Duration(milliseconds: 200),
//          pageBuilder: (BuildContext context, Animation animation,
//              Animation secondaryAnimation) {
//            return FadeTransition(
//              opacity: animation,
//              child: RouteMap.routes[routeName],
//            );
//          }
//        ));
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}