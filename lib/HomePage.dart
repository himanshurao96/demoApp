import 'package:flutter/material.dart';
import 'package:flutter_1/Constants.dart';
// import 'dart:convert';
import 'Drawer/drawer.dart';

class HomePage extends StatelessWidget {
  List<String> imagesData = [
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/05/12/19/20/mosaic-3394375_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/03/24/08/56/colorful-3256055_1280.jpg',
    'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_1280.jpg',
    'https://cdn.pixabay.com/photo/2013/04/04/12/34/mountains-100367_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.logout),
          //   onPressed: () {
          //     Constants.prefs?.setBool("loggedIn", false);
          //     Navigator.pushReplacementNamed(context, "/login");
          //   },
          // )
        ],
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   color: Colors.grey,
        // ),
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: imagesData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(imagesData[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
