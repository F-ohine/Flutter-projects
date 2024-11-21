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
            'Stack Widget Example',
            style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), // Title color
          ),
          backgroundColor: const Color.fromARGB(255, 20, 152, 200), // AppBar background color
          iconTheme: IconThemeData(color: const Color.fromARGB(255, 46, 247, 53)), // Icon color
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // Rectangular Container
              Container(
                width: 300.0,
                height: 200.0,
                color: Colors.blue,
              ),
              // Square Container
              Container(
                width: 150.0,
                height: 150.0,
                color: Colors.red,
              ),
              // Square with Border
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


