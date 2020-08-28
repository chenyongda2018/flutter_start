import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              image: AssetImage("images/wzry_01.jpeg"),
            ),
            Image(
              width: 150,
              height: 150,
              image: AssetImage("images/wzry_01.jpeg"),
              fit: BoxFit.contain,
            ),
            Image(
              width: 150,
              height: 150,
              image: AssetImage("images/wzry_01.jpeg"),
              fit: BoxFit.cover,
            ),
            Image(
              width: 150,
              height: 150,
              image: AssetImage("images/wzry_01.jpeg"),
              fit: BoxFit.fill,
            ),
            Image(
              width: 150,
              height: 150,
              image: AssetImage("images/wzry_01.jpeg"),
              fit: BoxFit.fitHeight,
            ),
            Image(
              width: 150,
              height: 150,
              image: AssetImage("images/wzry_01.jpeg"),
              fit: BoxFit.fitWidth,
            ),
            Image(
              width: 150,
              height: 150,
              image: AssetImage("images/wzry_01.jpeg"),
              fit: BoxFit.none,
            ),
            Row(
              children: [
                Icon(
                  Icons.accessible,
                  color: Colors.greenAccent,
                ),
                Icon(Icons.format_bold,color: Colors.black87,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
