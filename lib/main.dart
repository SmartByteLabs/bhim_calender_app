import 'package:calender_app/screens/calender_screen.dart';
import 'package:calender_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BHIM Calender',
      theme: light,
      home: MaterialApp(
          title: "BHIM Calender",
          routes: <String, WidgetBuilder>{
            "/check1": (BuildContext context) {
              return Text("checl");
            }
          },
          home: CalenderScreen()),
    );
  }
}
