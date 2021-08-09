import 'package:calender_app/screens/event_detail_screen.dart';
import 'package:flutter/material.dart';

class EventItem extends StatelessWidget {
  final String id;
  EventItem({this.id = ""}) : assert(id != "");

  onClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EventDetailScreen(id: this.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFBBBBBB),
            offset: Offset.zero,
            blurRadius: 8,
            spreadRadius: -2,
          )
        ],
      ),
      child: MaterialButton(
        onPressed: () => onClick(context),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 25,
                  child: Container(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        "Event Title",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text(
                        "Event description",
                        style: TextStyle(
                            fontSize: 14, color: Color.fromRGBO(80, 80, 80, 1)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
