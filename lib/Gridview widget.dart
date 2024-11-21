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
          title: Text('GridView Example'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 10.0, // Horizontal spacing between items
            mainAxisSpacing: 13.0, // Vertical spacing between items
          ),
          itemCount: 12, // Total number of items in the grid
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 57, 141, 243),
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
