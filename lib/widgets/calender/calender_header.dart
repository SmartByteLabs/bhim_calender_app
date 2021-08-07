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
          CalenderHeaderButton(isLeft: true, onClick: this.onLeft),
          CalenderTitle(month: this.month, year: this.year),
          CalenderHeaderButton(isLeft: false, onClick: this.onRight),
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
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        months[month] + " - " + year.toString(),
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class CalenderHeaderButton extends StatelessWidget {
  void Function() onClick = () => {};
  final bool isLeft;

  CalenderHeaderButton({
    this.isLeft = false,
    required void Function() onClick,
  }) {
    this.onClick = onClick;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onClick,
      child: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.topRight,
        child: Icon(
          IconData(this.isLeft ? 0xe092 : 0xe09b,
              fontFamily: 'MaterialIcons', matchTextDirection: true),
        ),
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
