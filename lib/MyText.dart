import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  Mytext({
    super.key,
    required this.title,
    this.size = 20,
    this.color = Colors.white,
    required this.check,
  });

  String title;
  double? size;
  Color? color;
  bool check;

  @override
  Widget build(BuildContext context) {
    return Text(

      title,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
        decoration: check ? TextDecoration.lineThrough : TextDecoration.none,
        decorationColor: color,
        decorationThickness: 2.5,
        decorationStyle: TextDecorationStyle.solid,
      ),
    );
  }
}
