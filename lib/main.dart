import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/page/ButtonPage.dart';
import 'package:flutter_start/page/ContextRoutePage.dart';
import 'package:flutter_start/page/StatefulWidgetPage.dart';
import 'package:flutter_start/page/StatelessWidgetPage.dart';
import 'package:flutter_start/page/TextPage.dart';
import 'package:flutter_start/widget/PageRoute.dart';

import 'page/GetStateInChildPage.dart';
import 'page/StateManagementPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "stateless_widget": (context) => StatelessWidgetPage(),
        "context_route": (context) => ContextRoutePage(),
        "stateful_widget_route": (context) => StatefulWidgetPage(),
        "get_state_route": (context) => GetStateInChildPage(),
        "state_control_route": (context) => StateManagementPage(),
        "text_page": (context) => TextPage(),
        "button_page": (context) => ButtonPage(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            PageItemRoute(
              routeName: "stateless_widget",
              title: "StatelessWidget",
            ),
            PageItemRoute(
              routeName: "context_route",
              title: "Context Test",
            ),
            PageItemRoute(
              routeName: "stateful_widget_route",
              title: "StatefulWidget",
            ),
            PageItemRoute(
              routeName: "get_state_route",
              title: "Get state in child note",
            ),
            PageItemRoute(
              routeName: "state_control_route",
              title: "State Management",
            ),
            PageItemRoute(routeName: "text_page", title: "Text Widget"),
            PageItemRoute(
              routeName: "button_page",
              title: "Button Widget",
            )
          ],
        ),
      ),
    );
  }
}
