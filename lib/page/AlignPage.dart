import 'package:flutter/material.dart';
import 'package:flutter_start/page/TextPage.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Widget"),
      ),
      body: Column(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              widthFactor: 2,
              heightFactor: 2,
              child: Text("hhh"),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text("hhh"),
            ),
          ),
          Container(
            color: Colors.lightGreen,
            child: ConstrainedBox(
              constraints: BoxConstraints.expand(width: 500,height: 500),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blueGrey,
                      child: Align(
                          alignment: FractionalOffset(0.5, 0.5),
                          child: Text(
                            "haha",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
