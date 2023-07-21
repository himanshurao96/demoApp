import 'package:flutter/material.dart';
import 'package:flutter_1/HomePage.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}
