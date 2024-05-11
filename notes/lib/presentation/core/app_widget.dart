import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar Title'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
