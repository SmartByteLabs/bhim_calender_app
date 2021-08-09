import 'package:calender_app/widgets/calender/date.dart';
import 'package:calender_app/widgets/calender/weeks.dart';
import 'package:flutter/material.dart';

class MonthWidget extends StatelessWidget {
  MonthWidget({required int month, required int year, this.today = 0}) {
    DateTime firstDate = DateTime(year = year, month = month);
    DateTime lastDate =
        DateTime(year = year, month = month + 1).subtract(Duration(days: 1));
    this.fromPos = firstDate.weekday;
    this.endDate = lastDate.day;
  }
  final num today;
  num fromPos = 1;
  num endDate = 30;

  List<WeekWidget> getAllWeeks() {
    List<WeekWidget> weeks = [];
    num crtDate = 1;
    num fromPos = this.fromPos;
    for (; weeks.length <= 5;) {
      var week = WeekWidget(
        startDate: crtDate,
        fromPos: fromPos,
        endDate: endDate,
        today: this.today,
      );

      weeks.add(week);
      crtDate += 8 - fromPos;
      fromPos = 1;
    }

    return weeks;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateWidget(txt: "M"),
              DateWidget(txt: "T"),
              DateWidget(txt: "W"),
              DateWidget(txt: "T"),
              DateWidget(txt: "F"),
              DateWidget(txt: "S"),
              DateWidget(txt: "S"),
            ],
          ),
          ...this.getAllWeeks()
        ],
      ),
    );
  }
}
