import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layouts/chat_layout/theme_data.dart';
import 'package:flutter_layouts/main_layout_item.dart';
import 'package:flutter_layouts/udemy_course_layout/align_layout/udemy_align_layout.dart';
import 'package:flutter_layouts/udemy_course_layout/baseline_layout/constrainedbox_layout_widget.dart';
import 'package:flutter_layouts/udemy_course_layout/constrainedbox_layout/constrainedbox_layout_widget.dart';
import 'package:flutter_layouts/udemy_course_layout/image_layout/udemy_image_layout.dart';
import 'package:flutter_layouts/udemy_course_layout/padding_layout/udemy_stack_layout.dart';
import 'package:flutter_layouts/udemy_course_layout/stack_layout/udemy_stack_layout.dart';

import 'login_layout_3/LoginLayoutState.dart';
import 'login_layout_3/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage()
  };

  // This widget is the root of your application.

  //todo change the home property to LayoutItem()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layouts",
      theme: defaultTargetPlatform == TargetPlatform.iOS
          ? kIOSTheme
          : kDefaultTheme,
      home: LayoutItem(),
      routes: routes,
    );
  }
}
