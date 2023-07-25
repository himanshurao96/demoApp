import 'package:flutter/material.dart';
import 'package:flutter_1/Constants.dart';
import 'package:flutter_1/homePage.dart';
import 'package:flutter_1/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My App",
    home:
        Constants.prefs?.getBool("loggedIn") == true ? HomePage() : LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login": (context) => LoginPage(),
      "/home": (context) => HomePage(),
    },
  ));
}
