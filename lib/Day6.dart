import 'package:flutter/material.dart';
import 'package:simplefirstproject/MyText.dart';
import 'package:simplefirstproject/ToDoTile.dart';

class Day6 extends StatefulWidget {
  Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

TextEditingController _controller = TextEditingController();

class _Day6State extends State<Day6> {
  void onChnaged(index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  hello() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 200,
            width: 200,
            color: Colors.white,
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Enter note",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Notes.add([_controller.text.toString(), false]);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List Notes = [
    ["Wakeup Early", false],
    ["Do Flutter task", false],
    ["Sleep Early", false],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            hello();
          },
          child: Icon(Icons.add),
        ),

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
