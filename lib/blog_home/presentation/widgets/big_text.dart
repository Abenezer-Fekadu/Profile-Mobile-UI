import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  TextOverflow overflow;
  double size;

  BigText(
      {Key? key,
      required this.text,
      this.color = const Color(0xFF332d2b),
      this.overflow = TextOverflow.ellipsis,
      this.size = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w900,
      ),
      overflow: overflow,
    );
  }
}
