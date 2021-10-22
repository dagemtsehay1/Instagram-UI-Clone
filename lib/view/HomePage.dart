import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/view/widgets/postWidget.dart';
import 'dart:math' as math;
import 'package:instagram_clone/view/widgets/storyWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/insta_title.png",
          height: 50,
        ),
        actions: <Widget>[
          Transform.rotate(
            angle: -math.pi / 4,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Stories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            StoryWidget(),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
