import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
