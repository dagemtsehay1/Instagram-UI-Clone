import 'package:flutter/material.dart';
import 'package:instagram_clone/view/AddPostPage.dart';
import 'package:instagram_clone/view/HomePage.dart';
import 'package:instagram_clone/view/NotficationPage.dart';
import 'package:instagram_clone/view/ProfilePage.dart';
import 'package:instagram_clone/view/SearchPage.dart';

// main screen
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;
  List<IconData> iconsList = [
    Icons.home,
    Icons.search,
    Icons.add_box,
    Icons.favorite_border,
    Icons.person
  ];

  var screens = [
    HomePage(),
    SearchPage(),
    AddNewPost(),
    NotificationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: iconsList.map((icon) {
            int index = iconsList.indexOf(icon);
            return IconButton(
              icon: Icon(
                icon,
                size: currentScreen == index ? 30 : 25,
                color: currentScreen == index ? Colors.black : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  currentScreen = index;
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
