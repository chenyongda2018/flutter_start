import 'package:flutter/material.dart';

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
  static Map<String, dynamic> routes = {
    "stateless_widget":  StatelessWidgetPage(),
    "context_route":  ContextRoutePage(),
    "stateful_widget_route":  StatefulWidgetPage(),
    "get_state_route":  GetStateInChildPage(),
    "state_control_route":  StateManagementPage(),
    "text_page":  TextPage(),
    "button_page":  ButtonPage(),
    "image_page":  ImagePage(),
    "checkbox_page":  CheckBoxPage(),
    "text_field_page":  TextFieldPage(),
    "indicator_page":  IndicatorPage(),
    "flex_page":  FlexPage(),
    "wrap_flow_page":  WrapFlowPage(),
    "align_page":  AlignPage(),
    "container_page":  ContainerLayout(),
    "scaffold_page":  ScaffoldPage(),
    "scroll_page":  ScrollPage(),
    "custom_scroll_page":  CustomScrollViewPage(),
    "rich_text_edit":  RichTextEditPage(),
    "custom_view_page":  CustomViewPage(),
    "inherited_page":  InheritedPage(),
    "provider_page":  ProviderPage(),
    "future_builder_page":  FutureBuilderPage(),
    "dialog_page":  DialogPage(),
    "point_event_page":  PointEventPage(),
    "gesture_detector_page":  GestureDetectorPage(),
    "NotificationPage":  NotificationPage(),
    "AnimationPage":  AnimationPage(),
  };
}
