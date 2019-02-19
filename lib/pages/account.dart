import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class AccountPage extends StatelessWidget {
  Widget _myProfileTabPage() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Profile Tab Page',
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/002.png',
                height: 120.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _securityTabPage() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Security Tab Page',
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/003.png',
                height: 120.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Account Page'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'My Profile', icon: Icon(Icons.account_circle),),
              Tab(text: 'Security', icon: Icon(Icons.security)),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[
            _myProfileTabPage(),
            _securityTabPage()
          ],
        ),
      ),
    );
  }
}
