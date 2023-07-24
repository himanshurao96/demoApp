import 'package:flutter/material.dart';
import 'package:flutter_1/homePage.dart';
import 'package:flutter_1/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage(),
    },
  ));
}
