import 'package:calender_app/widgets/calender/date.dart';
import 'package:flutter/widgets.dart';

class WeekWidget extends StatelessWidget {
  WeekWidget(
      {this.startDate = 1,
      this.fromPos = 0,
      this.endDate = 30,
      this.today = 0});
  final num startDate;
  final num fromPos;
  final num today;
  final num endDate;

  List<DateWidget> getAllDays() {
    List<DateWidget> dates = [];

    var x = startDate;
    for (var i = 1; i <= 7; i++) {
      if (i < this.fromPos && x <= 7) {
        dates.add(DateWidget());
        continue;
      }
      if (x > this.endDate) {
        dates.add(DateWidget());
        continue;
      }
      dates.add(DateWidget(
        today: x == this.today,
        date: x++,
      ));
    }
    return dates;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: this.getAllDays(),
        ),
      ),
    );
  }
}
