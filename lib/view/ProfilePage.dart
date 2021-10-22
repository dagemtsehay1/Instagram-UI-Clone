import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/5.jpg"),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "1,487",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Posts",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "898",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Followers",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "1,310",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Following",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 16,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dagem Tsehay",
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "ይኩነኒ በከመ ትቤለኒ፣\nእነድ ቃልህ ይደረግልኝ።\nሉቃስ 1:38",
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 1,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "https://github.com/dagemtsehay1/",
                    style: TextStyle(
                      color: Colors.blue[900],
                      letterSpacing: 1,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    padding: EdgeInsets.only(right: 25),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.grid_on,
                            color: Colors.grey[900],
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.assignment_ind,
                            color: Colors.grey[600],
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/0.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/5.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/6.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/7.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(1),
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/8.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
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
