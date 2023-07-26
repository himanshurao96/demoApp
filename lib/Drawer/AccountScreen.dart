import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AccountScreen"),
      ),
      body: Center(
        child: Text('AccountScreen is Open'),
      ),
    );
  }
}
