import 'package:flutter/material.dart';

class WrapFlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap Flow layout")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 110,
                  children: <Widget>[
                    Text(
                      "hello world!" * 1,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "gaga!" * 10,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
