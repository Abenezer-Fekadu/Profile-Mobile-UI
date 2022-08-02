import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  double size;
  Color color;
  double x;
  double y;

  EditButton(
      {Key? key,
      this.x = 10,
      this.y = 10,
      this.color = const Color(0xFF332d2b),
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildCircle(
      color: Colors.white,
      all: x,
      child: buildCircle(
        color: color,
        all: y,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all * 0.8),
          color: color,
          child: child,
        ),
      );
}
