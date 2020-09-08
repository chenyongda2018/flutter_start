import 'package:flutter/material.dart';

class AnimationImage extends AnimatedWidget {
  AnimationImage({Key key, Animation<double> anim})
      : super(key: key, listenable: anim);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Image.asset(
      "images/wzry_01.jpeg",
      width: animation.value,
      height: animation.value,
    );
  }
}
