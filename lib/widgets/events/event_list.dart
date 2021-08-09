import 'package:calender_app/widgets/events/event_item.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> ls = [];
    for (; ls.length <= 20;) ls.add(EventItem(id: "2"));
    return Expanded(
      child: Container(
        child: ListView(
          children: ls,
        ),
      ),
    );
  }
}
