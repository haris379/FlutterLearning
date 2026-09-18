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
    final textStyle = TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
    );

    final textPainter = TextPainter(
      text: TextSpan(text: title, style: textStyle),
      textDirection: TextDirection.ltr,
    )..layout();

    return SizedBox(
      height: textPainter.height,
      width: textPainter.width,
      child: Stack(
        children: [
          Text(title, style: textStyle),
          if (check)
            Positioned(
              top: textPainter.height / 2 - 1.2, // vertical center, minus half line thickness
              left: 0,
              child: Container(
                height: 2.5,
                width: textPainter.width,
                color: color, // exact same color as text
              ),
            ),
        ],
      ),
    );
  }
}