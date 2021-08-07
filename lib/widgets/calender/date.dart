import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({this.date = 0, this.today = false});

  final num date;
  final bool today;

  String getDate() {
    String txt = this.date.toString();
    if (txt == "0") return "";
    return txt;
  }

  Color getCircleColor() {
    return this.today
        ? Color.fromRGBO(230, 230, 230, 1)
        : Color.fromRGBO(250, 250, 250, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: CircleAvatar(
        backgroundColor: this.getCircleColor(),
        child: Text(
          this.getDate(),
          style: TextStyle(color: Color.fromRGBO(50, 50, 50, 1)),
        ),
      ),
    );
  }
}
