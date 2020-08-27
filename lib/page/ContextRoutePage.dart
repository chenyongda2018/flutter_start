import 'package:flutter/material.dart';

class ContextRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ContextRoutePage")),
        body: Center(
          child: Container(child: Builder(builder: (context) {
            Scaffold scaffold =
                context.findAncestorWidgetOfExactType<Scaffold>();
            return (scaffold.appBar as AppBar).title;
          })),
        ));
  }
}
