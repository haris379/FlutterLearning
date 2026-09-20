import 'package:flutter/material.dart';
import 'package:simplefirstproject/MyText.dart';
import 'package:simplefirstproject/ToDoTile.dart';

class Day6 extends StatefulWidget {
  Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  // bool isTracker = false;
  // void onChanged() {
  //   setState(() {
  //     if (isTracker == false) {
  //       isTracker = true;
  //     } else {
  //       isTracker = false;
  //     }
  //   });
  // }

  void onChnaged(index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  List Notes = [
    ["Wakeup Early", false],
    ["Do Flutter task", false],
    ["Sleep Early", true],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2196F3),
          title: Center(
            child: Text("Day6", style: TextStyle(color: Colors.white)),
          ),
        ),
        body: ListView.builder(
          itemCount: Notes.length,
          itemBuilder: (context, index) {
            return Todotile(
              value: Notes[index][1],
              onChanged: (p0) {
                onChnaged(index);
              },
              text: Notes[index][0],
            );
          },
        ),
      ),
    );
  }
}
