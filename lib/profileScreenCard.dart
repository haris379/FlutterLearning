import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text("Profile Card"),
          centerTitle: true,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child:
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 100,
                width: 100,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/images/mypic.jpeg"),
                ),
              ),
            ),

            Text(
              "Hi Muhammad Haris",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Software Engineer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                color: Colors.grey,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text("Hello, Haris!")));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
