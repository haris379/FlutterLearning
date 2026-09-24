import 'package:flutter/material.dart';
import 'package:simplefirstproject/Day7.dart';
import 'package:simplefirstproject/Day8.dart';
import 'package:simplefirstproject/profileScreenCard.dart';
import 'Day6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Practice());
  }
}
