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
            'ListView of Users',
            style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), // Set the title color to green
          ),
          backgroundColor: const Color.fromARGB(255, 47, 124, 224), // Optional: Set AppBar background color for contrast
          iconTheme: IconThemeData(color: Colors.green), // Change app bar icons color to match
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Icon(Icons.person, color: Colors.blue, size: 100.0), // Background icon
                     
                      Text(
                        'User ${index + 1}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ), // Top text
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
