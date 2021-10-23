import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';
import 'package:instagram_clone/view/MainScreen.dart';

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
