import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  void Function() onClick = () => {};
  final bool isLeft;
  final Color color;

  MyBackButton({
    this.isLeft = true,
    required void Function() onClick,
    this.color = const Color(0xFF000000),
  }) {
    this.onClick = onClick;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: this.onClick,
      child: Icon(
        IconData(this.isLeft ? 0xe092 : 0xe09b,
            fontFamily: 'MaterialIcons', matchTextDirection: true),
        color: this.color,
      ),
    );
  }
}
