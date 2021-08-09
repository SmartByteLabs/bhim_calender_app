import 'package:calender_app/widgets/calender/calender_header.dart';
import 'package:calender_app/widgets/calender/month.dart';
import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  int month = 0;
  int year = 0;
  DateTime crtTime = DateTime.now();
  _CalenderState() {
    this.month = crtTime.month;
    this.year = crtTime.year;
  }

  changeMonth(int x) {
    setState(() {
      this.month += x;
      if (this.month > 12) {
        this.month = 1;
        this.year++;
      }

      if (this.month <= 0) {
        this.month = 12;
        this.year--;
      }
    });
  }

  updateYear(DateTime val) {
    setState(() {
      this.year = val.year;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEEEEEE), width: 1),
        // boxShadow: [
        //   BoxShadow(
        //     color: const Color(0xFF999999),
        //     offset: Offset.zero,
        //     blurRadius: 8,
        //     spreadRadius: 0,
        //   )
        // ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Column(
        children: [
          CalenderHeader(
              month: month,
              year: year,
              onLeft: () => changeMonth(-1),
              onRight: () => changeMonth(1)),
          MonthWidget(
            month: month,
            year: year,
            today: month == crtTime.month && year == crtTime.year
                ? crtTime.day
                : 0,
          )
        ],
      ),
    );
  }
}
