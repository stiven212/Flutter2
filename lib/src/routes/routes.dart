import 'package:flutter/material.dart';
import 'package:project/src/pages/alert_page.dart';
import 'package:project/src/pages/animated_container.dart';
import 'package:project/src/pages/avatar_page.dart';
import 'package:project/src/pages/card_page.dart';
import 'package:project/src/pages/home_page.dart';
import 'package:project/src/pages/input_page.dart';
import 'package:project/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
  };
}
