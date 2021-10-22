import 'package:flutter/material.dart';
import 'package:instagram_clone/models/Story.dart';

class StoryWidget extends StatelessWidget {
  List<Story> stories = [
    Story(
      author: "yawen_heng",
      image: "0.jpg",
    ),
    Story(
      author: "rita_higgins",
      image: "1.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "2.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "3.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "4.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "5.jpg",
    ),
    Story(
      author: "rita_higgins",
      image: "6.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "7.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "8.jpg",
    ),
    Story(
      author: "bob_arnold",
      image: "9.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: stories
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 29, 29, 1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: DecorationImage(
                                image: AssetImage("images/${e.image}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${e.author}",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
