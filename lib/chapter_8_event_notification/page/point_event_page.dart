import 'package:flutter/material.dart';

class PointEventPage extends StatefulWidget {
  @override
  _PointEventPageState createState() => _PointEventPageState();
}

class _PointEventPageState extends State<PointEventPage> {
  PointerEvent _event;

  void updateEvent(PointerEvent event) {
    setState(() {
      _event = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Point Event"),
      ),
      body: Center(
        child: Listener(
          onPointerDown: updateEvent,
          onPointerCancel: updateEvent,
          onPointerMove: updateEvent,
          onPointerUp: updateEvent,
          behavior: HitTestBehavior.opaque,
          child: Container(
            color: Colors.blue,
            constraints: BoxConstraints.tight(Size(400,250)),
            child: Center(
              child: Text(
                "the event is:${_event}",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
        )
      ),
    );
  }
}
