import 'package:flutter/material.dart';
import 'package:simplefirstproject/MyText.dart';
import 'package:simplefirstproject/ToDoTile.dart';

class Day4 extends StatefulWidget {
  Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  bool isTracker = false;

  void onChanged() {
    setState(() {
      if (isTracker == false) {
        isTracker = true;
      } else {
        isTracker = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2196F3),
          title: Center(
            child: Text("Todo-App", style: TextStyle(color: Colors.white)),
          ),
        ),
        body: Column(
          children: [
            Todotile(
              text: "Hello",
              value: isTracker,
              onChanged: ((x) {
                onChanged();
              }),
            ),
            Todotile(
              text: "Hi",
              value: isTracker,
              onChanged: ((x) {
                onChanged();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
