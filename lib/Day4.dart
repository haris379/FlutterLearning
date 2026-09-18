import 'package:flutter/material.dart';
import 'package:simplefirstproject/MyText.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          title: Center(child: Text("Day4" , style: TextStyle(color: Colors.white),))
      ),
      body: Column(
          children: [
           Mytext(title: "Muhammad Haris", color: Colors.red,)
        ],
      ),
      ),
    );
  }
}
