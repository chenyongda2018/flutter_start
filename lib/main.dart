import 'package:flutter/material.dart';
import 'package:flutter_start/chapter_8_event_notification/my_notification.dart';
import 'package:flutter_start/chapter_9_animation/animation_page.dart';
import 'package:flutter_start/page/AlignPage.dart';
import 'package:flutter_start/page/ButtonPage.dart';
import 'package:flutter_start/page/CheckBoxPage.dart';
import 'package:flutter_start/page/ContainerLayoutPage.dart';
import 'package:flutter_start/page/ContextRoutePage.dart';
import 'package:flutter_start/page/CustomScrollViewPage.dart';
import 'package:flutter_start/page/FlexPage.dart';
import 'package:flutter_start/page/ImagePageRoute.dart';
import 'package:flutter_start/page/RichTextEditPage.dart';
import 'package:flutter_start/page/ScaffordPage.dart';
import 'package:flutter_start/page/ScrollPage.dart';
import 'package:flutter_start/page/StatefulWidgetPage.dart';
import 'package:flutter_start/page/StatelessWidgetPage.dart';
import 'package:flutter_start/page/TextPage.dart';
import 'package:flutter_start/page/inherited_page.dart';
import 'package:flutter_start/page/provider_route_page.dart';
import 'package:flutter_start/route_map.dart';
import 'package:flutter_start/widget/PageRoute.dart';

import 'chapter_8_event_notification/page/gesture_dectector_page.dart';
import 'chapter_8_event_notification/page/notification_page.dart';
import 'chapter_8_event_notification/page/point_event_page.dart';
import 'page/GetStateInChildPage.dart';
import 'page/IndicatorPage.dart';
import 'page/StateManagementPage.dart';
import 'page/TextFieldPage.dart';
import 'page/WrapFlowPage.dart';
import 'page/custom_view_page.dart';
import 'page/dialog_page.dart';
import 'page/future_builder_page.dart';

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
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: RouteMap.routes,
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
        child: NotificationListener<MyNotification>(
          onNotification: (notification) {
            print("home page:${notification.msg}");
            return false;
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                PageItemRoute(
                  routeName: "WebSocketPage",
                  title: "WebSocket",
                ),
                PageItemRoute(
                  routeName: "HttpPage",
                  title: "Dio package",
                ),
                PageItemRoute(
                  routeName: "rich_text_edit",
                  title: "Rich Text Edit",
                ),
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
                ),
                PageItemRoute(
                  routeName: "image_page",
                  title: "Image Widget",
                ),
                PageItemRoute(
                  routeName: "checkbox_page",
                  title: "Checkbox Widget",
                ),
                PageItemRoute(
                  routeName: "text_field_page",
                  title: "TextField Widget",
                ),
                PageItemRoute(
                  routeName: "indicator_page",
                  title: "Indicator Widget",
                ),
                PageItemRoute(
                  routeName: "flex_page",
                  title: "Flex & Expand Widget",
                ),
                PageItemRoute(
                  routeName: "wrap_flow_page",
                  title: "Wrap & Flow Widget",
                ),
                PageItemRoute(
                  routeName: "align_page",
                  title: "Align Widget",
                ),
                PageItemRoute(
                  routeName: "container_page",
                  title: "容器类 Widget",
                ),
                PageItemRoute(
                  routeName: "scaffold_page",
                  title: "Scaffold",
                ),
                PageItemRoute(
                  routeName: "scroll_page",
                  title: "可滚动组件",
                ),
                PageItemRoute(
                  routeName: "custom_scroll_page",
                  title: "CustomScrollView",
                ),
                PageItemRoute(
                  routeName: "custom_view_page",
                  title: "Custom Widget",
                ),
                PageItemRoute(
                  routeName: "inherited_page",
                  title: "Inherited Widget",
                ),
                PageItemRoute(
                  routeName: "provider_page",
                  title: "Provider Widget",
                ),
                PageItemRoute(
                  routeName: "future_builder_page",
                  title: "FutureBuilder",
                ),
                PageItemRoute(
                  routeName: "dialog_page",
                  title: "Dialog widget",
                ),
                PageItemRoute(
                  routeName: "point_event_page",
                  title: "Point Event",
                ),
                PageItemRoute(
                  routeName: "gesture_detector_page",
                  title: "GestureDetector",
                ),
                PageItemRoute(
                  routeName: "NotificationPage",
                  title: "Notification",
                ),
                PageItemRoute(
                  routeName: "AnimationPage",
                  title: "Animation",
                ),
                PageItemRoute(
                  routeName: "FileOperationPage",
                  title: "File Operation",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
