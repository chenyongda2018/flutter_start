import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              image: AssetImage("images/wzry_01.jpeg"),
            ),
            Image(
              image: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              height: 100,
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
