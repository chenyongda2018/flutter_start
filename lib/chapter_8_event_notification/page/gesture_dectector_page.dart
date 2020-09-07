
import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  @override
  _GestureDetectorPageState createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  var _event = "";
  double _left = 0.0;
  double _top = 0.0;

  void _updateEventStr(String event) {
    setState(() {
      _event = event;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector"),),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: _left,
              top: _top,
              child: GestureDetector(
                onPanUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _left += details.delta.dx;
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
      ),
    );
  }
}
