import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  List<bool> isSelected = [true, false, false];

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
              child: Text(
                "Custom FlatButton",
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: () {},
            ),
            ToggleButtons(
              children: <Widget>[
                Row(
                  children: <Widget>[Icon(Icons.ac_unit), Text("123")],
                ),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index) {
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
