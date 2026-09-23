import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF2196F3),
      content: Container(
        height: 200,
        width: 200,
        color: Color(0xFF2196F3),
        child: Column(
          children: [
            TextFormField(
              controller: controllerX,
              decoration: InputDecoration(
                hintText: "Enter note",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white),
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
                      color: Color(0xFF0D47A1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF0D47A1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: 100,
                    child: Center(
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
    ;
  }
}
