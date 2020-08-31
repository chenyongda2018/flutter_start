import 'package:flutter/material.dart';
import 'dart:math' as math;

class ContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器类 Widget"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: 100, minWidth: double.infinity),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.lightGreen,
              child: Text("ConstrainedBox", textAlign: TextAlign.center),
            ),
          ),
          Container(
            color: Colors.blueGrey,
            constraints: BoxConstraints.tight(Size(400, 20)),
            child: Text("BoxConstraints.tight", textAlign: TextAlign.center),
          ),
          SizedBox(
            height: 20,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2.0, 2.0),
                    color: Colors.black54,
                    blurRadius: 3.0,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "DecoratedBox",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
            child: Transform(
              alignment: Alignment.bottomLeft,
              transform: Matrix4.translationValues(2.0, 0, 0)
                  .copyInto(Matrix4.rotationX(2)),
              child: Container(
                color: Colors.black54,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Transform",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Transform.rotate(
                  angle: math.pi / 2,
                  child: Text(
                    "Transform.rotate",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Text(
                "lll",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    "RotatedBox",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Text(
                "lll",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
