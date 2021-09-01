import 'package:flutter/material.dart';
import 'package:flutter_responsivo/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      ),
      builder: (context, widget) {
        return ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          minWidth: 490,
          maxWidth: 1000,
          breakpoints: [
            ResponsiveBreakpoint.autoScaleDown(490, name: PHONE),
            ResponsiveBreakpoint.resize(500, name: MOBILE),
            ResponsiveBreakpoint.resize(700, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ]
        );
      },
      home: HomePage(),
    );
  }
}
