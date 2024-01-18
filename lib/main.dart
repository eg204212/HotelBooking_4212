// main.dart
import 'package:flutter/material.dart';
import 'package:hotelbookingmobile/home.dart'; // Import your Home class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(), // Set your desired starting page (Home, in this case)
    );
  }
}
