import 'package:flutter/material.dart';
import 'package:simplefirstproject/Day2.dart';
import 'package:simplefirstproject/Day3.dart';

import 'Day1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Day3());
  }
}
