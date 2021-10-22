import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Text(
          "Search",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Search Screen",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
