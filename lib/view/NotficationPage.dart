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
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image(
                image: AssetImage("images/8.jpg"),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "dagem_tsehay",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "liked your photo",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "3d",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              trailing: Image(
                image: AssetImage("images/3.jpg"),
                width: 50,
              ),
            ),
          );
        },
      ),
    );
  }
}
