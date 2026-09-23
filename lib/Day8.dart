import 'package:flutter/material.dart';
import 'package:simplefirstproject/ToDoTile.dart';
import 'package:simplefirstproject/hello.dart';

class Day8 extends StatefulWidget {
  Day8({super.key});

  @override
  State<Day8> createState() => _Day8State();
}

TextEditingController _controller = TextEditingController();

class _Day8State extends State<Day8> {
  void onChnaged(index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  List Notes = [
    ["Wakeup Early", false],
    ["Do Flutter task", false],
  ];

  onAdd() {
    setState(() {
      Notes.add([_controller.text.toString(), false]);
      _controller.clear();
      Navigator.pop(context);
    });
  }

  onCancel() {
    Navigator.pop(context);
  }

  onDelete(int index) {
    setState(() {
      Notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return hello(
                  controllerX: _controller,
                  onAdd: () {
                    onAdd();
                  },
                  onCancel: () {
                    onCancel();
                  },
                );
              },
            );
          },
          child: Icon(Icons.add),
        ),

        appBar: AppBar(
          backgroundColor: Color(0xFF2196F3),
          title: Center(
            child: Text("Day8", style: TextStyle(color: Colors.white)),
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
