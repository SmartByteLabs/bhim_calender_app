import 'package:calender_app/screens/base_screen.dart';
import 'package:calender_app/widgets/calender/calender.dart';
import 'package:calender_app/widgets/events/event_list.dart';
import 'package:flutter/material.dart';

class CalenderScreen extends BaseScreen {
  Widget getBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      // padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(children: [Calender(), EventList()]),
    );
  }
}
