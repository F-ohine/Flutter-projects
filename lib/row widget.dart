import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Row Widget Example',
            style: TextStyle(color: const Color.fromARGB(255, 76, 79, 175)), // Set the title color to green
          ),
          backgroundColor: const Color.fromARGB(255, 181, 131, 44), // Optional: Set AppBar background color for contrast
          iconTheme: IconThemeData(color: const Color.fromARGB(255, 46, 247, 53)), // Change app bar icons color to match
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.star, color: Colors.blue, size: 50.0),
              Icon(Icons.favorite, color: Colors.red, size: 50.0),
              Icon(Icons.thumb_up, color: Colors.green, size: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}