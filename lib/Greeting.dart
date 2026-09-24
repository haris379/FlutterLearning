import 'package:flutter/material.dart';

class Greeting extends StatefulWidget {
  const Greeting({super.key});

  @override
  State<Greeting> createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  final TextEditingController _controller = TextEditingController();
  String greeting = "";

  void greetUser() {
    setState(() {
      greeting = "Hi ${_controller.text}!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Greeting App",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey,
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  greetUser();
                  _controller.clear();
                },
                child: const Text("Greet Me"),
              ),
              const SizedBox(height: 30),

              Text(
                greeting,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
