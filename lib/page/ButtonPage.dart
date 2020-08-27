import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {},
            ),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: () {},
            ),
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
            RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_alarm),
                label: Text("Raised Button with icon")),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,

              child: Text("Custom FlatButton",
                ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: (){},
              
            ),
          ],
        ),
      ),
    );
  }
}
