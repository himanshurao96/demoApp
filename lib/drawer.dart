import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     "Hi I am drawer",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(color: Colors.indigo),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Rahul Sharma"),
            accountEmail: Text("rahul23@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1615109398623-88346a601842?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("E-mail"),
            subtitle: Text("hh@gmail.com"),
            trailing: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
