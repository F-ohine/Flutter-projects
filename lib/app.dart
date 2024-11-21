import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Multiple Styled Texts Example'),
        ),

        body: Center(
          child: Container(
             padding: const EdgeInsets.all(16.0), // Adds padding inside the container
            margin: const EdgeInsets.all(10.0), // Adds margin around the container
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 117, 117, 117), // Background color of the container
              borderRadius: BorderRadius.circular(15), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(66, 0, 118, 244),
                  blurRadius: 10,
                  offset: const Offset(5, 5),
                 )
              ]
            ),
          

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centers the texts and icons
            children: [
              const Text(
                'First styled text',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.orangeAccent,
                  decorationThickness: 2.0,
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'Hello I am Francis',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 3.0,
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.black26,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // First styled icon
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              const SizedBox(height: 20),

              // Second styled icon
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 60,
                shadows: [
                  Shadow(
                    blurRadius: 15.0,
                    color: Colors.black26,
                    offset: Offset(-2, -2),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Image from assets
              Image.asset(
                'assets/image/basketball.webp', // Replace with the path to your asset image
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),

              // Image from network
              Image.network(
                'https://picsum.photos/250?image=9', // Replace with a valid image URL
                width: 150,
                height: 150,
                 errorBuilder: (context, error, stackTrace) {
                  return Column(
                    children: [
                      const Icon(Icons.error, color: Colors.red, size: 50),
                      const Text(
                        'Failed to load image',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 116, 72, 193)),
        useMaterial3: true,
      ),
    );
  }
}
