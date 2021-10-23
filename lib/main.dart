import 'package:flutter/material.dart';
import 'package:instagram_clone/view/AddPostPage.dart';
import 'package:instagram_clone/view/HomePage.dart';
import 'package:instagram_clone/view/NotficationPage.dart';
import 'package:instagram_clone/view/ProfilePage.dart';
import 'package:instagram_clone/view/SearchPage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: Colors.white,
        )),
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new MainScreen(),
        image: new Image.asset('images/splashscreen.png'),
        gradientBackground: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.7, 1.0],
          colors: [
            Colors.pink,
            Colors.blueAccent,
          ],
        ),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 50,
        loaderColor: Colors.white);
  }
}

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
