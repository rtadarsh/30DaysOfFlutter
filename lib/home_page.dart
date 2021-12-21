import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  int days = 30;
  String name = "Adarsh";
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text('Welcome to $days days of flutter by $name'),
      )),
    );
  }
}
