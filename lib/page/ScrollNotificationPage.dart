import 'package:flutter/material.dart';

class ScrollNotificationPage extends StatefulWidget {
  @override
  _ScrollNotificationPageState createState() => _ScrollNotificationPageState();
}

class _ScrollNotificationPageState extends State<ScrollNotificationPage> {
  var _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          print("extentBefore:${notification.metrics.extentBefore}");
          print("extentInside:${notification.metrics.extentInside}");
          print("extentAfter:${notification.metrics.extentAfter}");
          double progress = (notification.metrics.pixels) /
              (notification.metrics.maxScrollExtent);
          setState(() {
            _progress = "${(progress * 100).toInt()}%";
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ListView.builder(
                itemExtent: 60,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.blue[100 * (index % 9)],
                    child: Text("index ${index + 1}"),
                  );
                }),
            Positioned(
              right: 16,
              bottom: 16,
              child: CircleAvatar(
                radius: 30,
                child: Text(_progress,style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
