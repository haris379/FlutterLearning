import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
   Day3({super.key});

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text("My App", style: TextStyle(
              color: Colors.white,
            )))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: _controller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              print(_controller.toString());
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
