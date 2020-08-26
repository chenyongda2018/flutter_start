import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/page/StatelessWidgetPage.dart';
import 'package:flutter_start/widget/PageRoute.dart';

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
      routes: {"statelesswidget": (context) => StatelessWidgetPage()},
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
  static const Color ITEM_COLOR = Colors.black54;
  static const double ITEM_HEIGHT = 50;
  static const double ITEM_FONT_SIZE = 28;

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
              routeName: "statelesswidget",
              title: "StatelessWidget",
            ),
            PageItemRoute(
              routeName: "statefulwidget",
              title: "StatefulWidget",
            ),
          ],
        ),
      ),
    );
  }
}
