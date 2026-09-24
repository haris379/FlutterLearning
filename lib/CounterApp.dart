import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
  Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  int variable = 0;

  @override
  void Increment() {
    setState(() {
      variable += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Center(
            child: const Text(
              "Counter App",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Increment
                    ElevatedButton(
                      onPressed: () {
                        Increment();
                      },
                      child: Text("Increment"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 20),
                    // Decrement
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Decrement"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 20),
                    // Reset
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Reset"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
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
