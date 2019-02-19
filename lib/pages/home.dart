import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class HomePage extends StatelessWidget {
  
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
          return Container(
            child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
new ListTile(
            leading: new Icon(Icons.favorite),
            title: new Text('Follow'),
            onTap: () {
              // do some thing
              Navigator.pop(context);
            }          
          ),
          new ListTile(
            leading: new Icon(Icons.block),
            title: new Text('Unfollow'),
            onTap: () {
              // do some thing
              Navigator.pop(context);
            },          
          ),
            ],
          ),
          );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/001.png',
                height: 120.0,
              ),
            ),
            /* OutlineButton(
              child: new Text("Account Page"),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountPage(),
                    ));
              }, 
            ),*/
            OutlineButton(
              child: new Text("Show Bottom Sheet"),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              onPressed: () {
                _showBottomSheet(context);
              }, 
            ),
          ],
        ),
      ),
    );
  }
}
