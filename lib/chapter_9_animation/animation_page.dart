import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/chapter_9_animation/animation_image_widget.dart';
import 'package:flutter_start/chapter_9_animation/hero_page.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this);
    _animation = CurvedAnimation(parent: _animController, curve: Curves.linear);
    _animation = Tween(begin: 280.0, end: 300.0).animate(_animation)
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _animController.forward();
        } else if (status == AnimationStatus.completed) {
          _animController.reverse();
        }
      });
    _animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            //animation
            AnimatedBuilder(
              animation: _animation,
              child: Image.asset("images/wzry_01.jpeg"),
              builder: (BuildContext ctx, Widget child) {
                return Container(
                  child: child,
                  height: _animation.value,
                  width: _animation.value,
                );
              },
            ),

            //hero 动画
            Container(
              alignment: Alignment.topCenter,
              child: InkWell(
                child: Hero(
                  tag: "avatar",
                  child: Container(
                    constraints: BoxConstraints.tight(Size(80, 40)),
                    child: Image.asset(
                      "images/wzry_01.jpeg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (BuildContext context,Animation anim,Animation anims) {
                      return FadeTransition(
                        opacity: anim,
                        child: Scaffold(
                          appBar: AppBar(title: Text("Hero detail"),),
                          body: HeroAnimationPage(),
                        ),
                      );
                    }
                  ));
//                  Navigator.push(context,
//                      CupertinoPageRoute(builder: (BuildContext context) {
//                    return HeroAnimationPage();
//                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }
}
