import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layouts/chat_layout/theme_data.dart';
import 'package:flutter_layouts/main_layout_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Friendly Chat",
      theme: defaultTargetPlatform == TargetPlatform.iOS ? kIOSTheme : kDefaultTheme,
      home: LayoutItem(),
    );

  }
}