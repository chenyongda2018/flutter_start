import 'package:flutter/material.dart';
import 'package:flutter_start/chapter_8_event_notification/my_notification.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 30,
            itemExtent: 40,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: ListTile(
                  title: Text("$index"),
                ),
                onTap: () {
                  MyNotification(msg: "$index").dispatch(context);
                },
              );
            }),
      ),
    );
  }
}
