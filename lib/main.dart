import 'package:flutter/material.dart';
import 'package:shoes_app/screens/home_screen.dart';

void main() {
  runApp(ShoesApp());
}

class ShoesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shoes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
