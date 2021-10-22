import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Following",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
            Text(
              "You",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Notification",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
