import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
   Mytext({super.key, required this.title, this.size = 20, this.color = Colors.black });

   String title;
   double ?size;
   Color ?color;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
    ),);
  }
}
