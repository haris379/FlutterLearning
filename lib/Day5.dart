import 'package:flutter/material.dart';
import 'package:simplefirstproject/MyText.dart';
import 'package:simplefirstproject/ToDoTile.dart';

class Day5 extends StatefulWidget {
  Day5({super.key});

  @override
  State<Day5> createState() => _Day5State();
}

class _Day5State extends State<Day5> {
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
    ["Do Flutter task", true],
    ["Sleep Early", true],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2196F3),
          title: Center(
            child: Text("Day5", style: TextStyle(color: Colors.white)),
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
