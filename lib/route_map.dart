import 'package:flutter/material.dart';

import 'chapter_11_io/file_operation_page.dart';
import 'page/ContextRoutePage.dart';
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

class RouteMap {
  static Map<String, WidgetBuilder> routes = {
    "stateless_widget": (context) => StatelessWidgetPage(),
    "context_route": (context) => ContextRoutePage(),
    "stateful_widget_route": (context) => StatefulWidgetPage(),
    "get_state_route": (context) => GetStateInChildPage(),
    "state_control_route": (context) => StateManagementPage(),
    "text_page": (context) => TextPage(),
    "button_page": (context) => ButtonPage(),
    "image_page": (context) => ImagePage(),
    "checkbox_page": (context) => CheckBoxPage(),
    "text_field_page": (context) => TextFieldPage(),
    "indicator_page": (context) => IndicatorPage(),
    "flex_page": (context) => FlexPage(),
    "wrap_flow_page": (context) => WrapFlowPage(),
    "align_page": (context) => AlignPage(),
    "container_page": (context) => ContainerLayout(),
    "scaffold_page": (context) => ScaffoldPage(),
    "scroll_page": (context) => ScrollPage(),
    "custom_scroll_page": (context) => CustomScrollViewPage(),
    "rich_text_edit": (context) => RichTextEditPage(),
    "custom_view_page": (context) => CustomViewPage(),
    "inherited_page": (context) => InheritedPage(),
    "provider_page": (context) => ProviderPage(),
    "future_builder_page": (context) => FutureBuilderPage(),
    "dialog_page": (context) => DialogPage(),
    "point_event_page": (context) => PointEventPage(),
    "gesture_detector_page": (context) => GestureDetectorPage(),
    "NotificationPage": (context) => NotificationPage(),
    "AnimationPage": (context) => AnimationPage(),
    "FileOperationPage": (context) => FileOperationPage(),
  };
}
