import "package:flutter/material.dart";
import 'dart:math' as math;

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        color: Colors.white,
        elevation: 1.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage("images/1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "rita_higgins",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Addis Abeba, Ethiopia",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Image(
              image: AssetImage("images/9.jpg"),
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: isLiked
                            ? Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 30,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 30,
                              ),
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_comment,
                          size: 30,
                        ),
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                      Transform.rotate(
                        angle: -math.pi / 4,
                        child: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: isBookmarked
                        ? Icon(
                            Icons.bookmark,
                            size: 30,
                            color: Colors.pink,
                          )
                        : Icon(
                            Icons.bookmark_border,
                            size: 30,
                            color: Colors.black,
                          ),
                    onPressed: () {
                      setState(() {
                        isBookmarked = !isBookmarked;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
