import 'package:flutter/material.dart';

class HeroAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Hero(
          tag: "avatar",
          child: Image.asset("images/wzry_01.jpeg"),
        ),
      ),
    );
  }
}
