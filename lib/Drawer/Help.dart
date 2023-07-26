import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Help"),
      ),
      body: Center(
        child: Text("Help Screen is Open"),
      ),
    );
  }
}
