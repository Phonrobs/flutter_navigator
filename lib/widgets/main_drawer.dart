import 'package:flutter/material.dart';

import '../pages/friends.dart';
import '../pages/home.dart';
import '../pages/account.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/001.png'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account Page'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => AccountPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends Page'),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => FriendsPage()));
            },
          ),
        ],
      ),
    );
  }
}
