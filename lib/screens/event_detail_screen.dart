import 'package:calender_app/screens/base_screen.dart';
import 'package:calender_app/widgets/events/event_header.dart';
import 'package:flutter/material.dart';

class EventDetailScreen extends BaseScreen {
  final String id;
  final bool addDrawer = false;

  EventDetailScreen({this.id = ""}) : assert(id != "");

  AppBar getAppBar(BuildContext context) {
    return AppBar(
      title: Container(
        child: Text(
          "Event Header Text",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
    );
  }

  Widget getBody(BuildContext context) {
    return Column(
      children: [EventHeader()],
    );
  }
}
