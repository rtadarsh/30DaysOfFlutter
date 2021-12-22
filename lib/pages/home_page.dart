import 'dart:ffi';

import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Adarsh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping App",
          style: TextStyle(
            color: Color(0xFFCCCCCC),
          ),
        ),
        // backgroundColor: Color(0x99123456),
      ),
      body: Center(
        child: Text("Welcome to my first App"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.change_circle),
        onPressed: null,
      ),
      drawer: Drawer(),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Color(0xFF8EFFEE),
    //     title: Text(
    //       "First Flutter App",
    //       style: TextStyle(fontSize: 20, color: Color(0xFF000000)),
    //     ),
    //   ),
    //   body: Center(
    //       child: Container(
    //     child: Text('Welcome to $days days of flutter by $name'),
    //   )),
    //   drawer: Drawer(
    //     backgroundColor: Color(0xFF11111),
    //     child: ListView(),
    //   ),
    // );
  }
}
