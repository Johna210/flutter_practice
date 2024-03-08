import 'package:flutter/material.dart';
import 'package:quiz/starting_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 101, 37, 211),
                Color.fromARGB(255, 103, 47, 201),
                Color.fromARGB(255, 116, 68, 200)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: StartingScreen(),
        ),
      ),
    ),
  );
}
