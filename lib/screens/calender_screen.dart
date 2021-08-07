import 'package:calender_app/widgets/calender/calender.dart';
import 'package:calender_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CalenderDrawer(),
      appBar: getAppBar(),
      body: getBody(),
    );
  }
}

AppBar getAppBar() {
  return AppBar(
    title: Text("BHIM Calender"),
  );
}

Widget getBody() {
  Gradient gradient = LinearGradient(stops: [
    0,
    0.4,
    0.6,
    1
  ], colors: [
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(210, 210, 210, 1),
    Color.fromRGBO(210, 210, 210, 1),
    Color.fromRGBO(255, 255, 255, 1),
  ]);

  return Container(
    decoration: BoxDecoration(
      gradient: gradient,
    ),
    // padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
    child: Calender(),
  );
}
