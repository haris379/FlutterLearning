import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
  Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  int variable = 0;

  void onIncrement() {
    setState(() {
      variable += 1;
    });
  }

  void onDecrement() {
    setState(() {
      if (variable > 0) {
        variable -= 1;
      } else {
        variable = 0;
      }
    });
  }

  void onReset() {
    setState(() {
      variable = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Counter App",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(variable.toString(), style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // onIncrement
                    ElevatedButton(
                      onPressed: () {
                        onIncrement();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        "Increment",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),

                    // onDecrement
                    ElevatedButton(
                      onPressed: () {
                        onDecrement();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        "Decrement",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),

                    // Reset
                    ElevatedButton(
                      onPressed: () {
                        onReset();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        "Reset",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
