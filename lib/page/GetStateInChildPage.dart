import 'package:flutter/material.dart';

class GetStateInChildPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<GetStateInChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get state in child widget node"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return FlatButton(
            onPressed: () {
              ScaffoldState _state =
                  context.findAncestorStateOfType<ScaffoldState>();
              _state.showSnackBar(SnackBar(
                content: Icon(Icons.ac_unit),
              ));
            },
            child: Text("open the snack bar"),
          );
        }),
      ),
    );
  }
}
