import 'package:calender_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

abstract class BaseScreen extends StatelessWidget {
  final bool addDrawer = true;
  AppBar getAppBar(BuildContext context) {
    return AppBar(
      title: Text("BHIM Calender"),
    );
  }

  Widget getBody(BuildContext context);

  Widget getDrawer(BuildContext context) {
    return CalenderDrawer();
  }

  @override
  Widget build(BuildContext context) {
    if (!this.addDrawer) {
      return Scaffold(
        appBar: getAppBar(context),
        body: getBody(context),
      );
    }
    return Scaffold(
      drawer: getDrawer(context),
      appBar: getAppBar(context),
      body: getBody(context),
    );
  }
}
