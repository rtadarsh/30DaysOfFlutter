import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  int days = 30;
  String name = "Adarsh";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8EFFEE),
        title: Text(
          "First Flutter App",
          style: TextStyle(fontSize: 20, color: Color(0xFF000000)),
        ),
      ),
      body: Center(
          child: Container(
        child: Text('Welcome to $days days of flutter by $name'),
      )),
      drawer: Drawer(
        backgroundColor: Color(0xFF11111),
        child: ListView(),
      ),
    );
  }
}
