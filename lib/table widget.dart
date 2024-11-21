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
            style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)), // Title color
          ),
          backgroundColor: const Color.fromARGB(255, 42, 227, 32), // AppBar background color
          iconTheme: IconThemeData(color: const Color.fromARGB(255, 46, 247, 53)), // Icon color
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Optional padding around the table
          child: Table(
            border: TableBorder.all(color: Colors.black, width: 1), // Border around cells
            children: [
              // Header Row
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[300]), // Optional: Header background color
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Subject',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Score',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              // Row 1
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Hassan'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Math 101'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('87'),
                  ),
                ],
              ),
              // Row 2
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Divine'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Intro to Software Engineering'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('78'),
                  ),
                ],
              ),
              // Row 3
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Ralph'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Use of English'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('72'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
