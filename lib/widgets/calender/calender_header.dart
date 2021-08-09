import 'package:calender_app/widgets/backbutton.dart';
import 'package:flutter/material.dart';

class CalenderHeader extends StatelessWidget {
  final int month;
  final int year;
  void Function() onLeft = () => {}, onRight = () => {};
  CalenderHeader({
    this.month = 1,
    this.year = 2021,
    required void Function() onLeft,
    required void Function() onRight,
  }) {
    this.onLeft = onLeft;
    this.onRight = onRight;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyBackButton(isLeft: true, onClick: this.onLeft),
          CalenderTitle(month: this.month, year: this.year),
          MyBackButton(isLeft: false, onClick: this.onRight),
        ],
      ),
    );
  }
}

class CalenderTitle extends StatelessWidget {
  final int month;
  final int year;
  CalenderTitle({this.month = 1, this.year = 2021});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        months[month] + " - " + year.toString(),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

const List<String> months = [
  '',
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
