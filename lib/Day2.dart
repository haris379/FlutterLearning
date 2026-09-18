import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  int variable = 0;

  void Increment() {
    setState(() {
      variable += 1;
    });
  }

  void Decrement() {
    setState(() {
      variable -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "My First App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "You have pressed this button",
                style: TextStyle(fontSize: 25),
              )),

            SizedBox(
              height: 20,
            ),
            Text(variable.toString(), style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Increment();
              },
              child: Text("Increment"),
            ),

            ElevatedButton(
              onPressed: () {
                Decrement();
              },
              child: Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
