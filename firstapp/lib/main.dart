import 'package:flutter/material.dart';

void main() {
  runApp(bitApp());
}

// ignore: camel_case_types
class bitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorManager.bitblue,
          title: Column(
            children: [
              Text(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                "Bit By Bit",
              ),
              Text(
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 254, 254),
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
                "Learn step by step",
              ),
            ],
          ),
          actions: [
            Icon(Icons.notification_add, color: Colors.white),
            SizedBox(width: 5),
            Icon(Icons.menu, color: Colors.white),
          ],
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            width: 240,
            height: 120,
            decoration: BoxDecoration(
              color: colorManager.bitblue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.notification_add, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(style: TextStyle(color: Colors.white), "Today"),
                    Text(style: TextStyle(color: Colors.white), "6"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class colorManager {
  static Color bitblue = const Color.fromARGB(255, 5, 40, 129);
}
