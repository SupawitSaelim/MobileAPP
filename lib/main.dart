import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Text("This is my first app"),
      ),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
