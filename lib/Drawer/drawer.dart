import 'package:flutter/material.dart';
import 'package:flutter_1/Drawer/AboutUs.dart';
import 'package:flutter_1/Drawer/AccountScreen.dart';
import 'package:flutter_1/Drawer/Help.dart';
import 'package:flutter_1/Drawer/Setting.dart';
import '../Constants.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Rahul Sharma"),
            accountEmail: Text("rahul23@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text("Account"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AccountScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.animation_rounded,
              color: Colors.blue,
            ),
            title: Text("About Us"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AboutUs(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.blue,
            ),
            title: Text("Help"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Help(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            title: Text("Settings"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Setting(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.blue,
            ),
            title: Text("LogOut"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Constants.prefs?.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, "/login");
            },
          ),
        ],
      ),
    );
  }
}
