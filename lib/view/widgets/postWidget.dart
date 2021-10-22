import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:math' as math;

import 'package:instagram_clone/models/Post.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isBookmarked = false;
  bool isLiked = false;
  List<Post> posts = [
    Post(
      author: "yawen_heng",
      profilePic: "0.jpg",
      postPic: "9.jpg",
    ),
    Post(
      author: "rita_higgins",
      profilePic: "1.jpg",
      postPic: "8.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "2.jpg",
      postPic: "7.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "3.jpg",
      postPic: "6.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "4.jpg",
      postPic: "5.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "5.jpg",
      postPic: "4.jpg",
    ),
    Post(
      author: "rita_higgins",
      profilePic: "6.jpg",
      postPic: "3.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "7.jpg",
      postPic: "2.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "8.jpg",
      postPic: "1.jpg",
    ),
    Post(
      author: "bob_arnold",
      profilePic: "9.jpg",
      postPic: "0.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: posts.map((e) {
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
                                image: AssetImage("images/${e.profilePic}"),
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
                                "${e.author}",
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
                  image: AssetImage("images/${e.postPic}"),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 0,
                    right: 20,
                    bottom: 10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Liked by ",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "dagem_tsehay",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " and",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        " 518 Others",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
