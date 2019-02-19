import 'package:flutter/material.dart';

class FriendProfilePage extends StatelessWidget {
  final String friendName;

  FriendProfilePage(this.friendName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friend Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/002.png',
              height: 150.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              friendName,
              style: TextStyle(fontSize: 30.0, color: Colors.orangeAccent),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: OutlineButton(
                    child: Text('Follow'),
                    onPressed: () {
                      Navigator.pop(context, 'follow');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: OutlineButton(
                    child: Text('Unfollow'),
                    onPressed: () {
                      Navigator.pop(context, 'unfollow');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
