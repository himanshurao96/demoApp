import 'package:flutter/material.dart';

class BGImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/Login_image.png",
      fit: BoxFit.cover,
    );
  }
}
