import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // you need to override previously written build method that returns a widget
  Widget build(BuildContext context) {
    // context is a piece of info telling about the position of each widget in the hierarchy tree
    return MaterialApp(
      // home: HomePage(), // this is the initial page of whole app
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) =>
            LoginPage(), // this can only be included if home property is not specified. This is the default route unless otherwise specified by initialRoute
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
