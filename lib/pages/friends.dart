import 'package:flutter/material.dart';

import './friend_profile.dart';
import '../widgets/main_drawer.dart';

class FriendsPage extends StatelessWidget {
  final List<String> _friends = ['Jack', 'Peter', 'Michel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends Page'),
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
        itemCount: _friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(_friends[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FriendProfilePage(_friends[index]);
                  },
                ),
              ).then((value) {
                if (value != null) {
                  Scaffold.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                      content: Text('You $value ${_friends[index]}'),
                    ));
                }
              });
            },
          );
        },
      ),
    );
  }
}
