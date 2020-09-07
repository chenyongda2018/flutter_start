
import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  @override
  _GestureDetectorPageState createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  var _event = "";
  double _left = 0.0;
  double _top = 0.0;

  double _width = 200;

  void _updateEventStr(String event) {
    setState(() {
      _event = event;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector")),
      body: Stack(
        alignment: Alignment.center,

        children: <Widget>[
          GestureDetector(
            onScaleUpdate: (ScaleUpdateDetails s) {
              setState(() {
                _width = 200 * s.scale.clamp(0.5, 10);
              });
            },
            child: Image.asset("images/wzry_01.jpeg",width: _width,),
          ),
          Positioned(
            left: _left,
            top: _top,
            child: GestureDetector(
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
//                    _left += details.delta.dx;
                  _top += details.delta.dy;
                });
              },

              child: CircleAvatar(
                child: Text("A"),
                backgroundColor: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
