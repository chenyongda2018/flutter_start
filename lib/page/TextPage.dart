import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text widget"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello world!" * 2,
              textAlign: TextAlign.right,
            ),
            Text(
              "have fun" * 5,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "hahahahah",
              textScaleFactor: 3,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text("hahahah",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Container(
              child: Text(
                "ProcessProfilingInfo",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
            Container(
              child:Text.rich(
                TextSpan(
                  text: "Click right :",
                  style: TextStyle(fontSize: 20),
                  children: [
                    TextSpan(
                      text: "http://www.baidu.com",
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: "http://www.baidu.com",
                    ),
                    TextSpan(
                      text: "http://www.baidu.com",
                    ),
                    TextSpan(
                      text: "http://www.baidu.com",
                    ),
                    TextSpan(
                      text: "http://www.baidu.com",
                    ),
                    WidgetSpan(
                      child: Icon(Icons.arrow_upward)

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
