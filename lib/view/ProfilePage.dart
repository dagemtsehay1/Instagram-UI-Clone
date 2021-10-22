import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "dagem_tsehay",
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
