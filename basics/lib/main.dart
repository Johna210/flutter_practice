import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
        title: 'My App',
        home: MyWidget(title: 'Widget testing', message: 'For Widget testing')),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}
