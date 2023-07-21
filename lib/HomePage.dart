import 'package:flutter/material.dart';
import 'bg_image.dart';
import 'drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(children: [
                BGImage(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hi $name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Username ",
                          labelText: "Username",
                        ),
                        onChanged: ((value) {
                          name = value;
                        }),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
        ));
  }
}
