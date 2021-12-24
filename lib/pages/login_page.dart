import 'package:flutter/material.dart';

// to add images and icons, create folder assets/images and assets/icons and uncomment assets and 1 following line in pubspec.yaml

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
          child: Column(
        children: [
          Image.asset("./assets/images/login_image.png"),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                  obscureText: true,
                ),
                ElevatedButton(
                    onPressed: null,
                    child: Text('Login'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                    ))
              ],
            ),
          ),
          Text(
            "New to first_app ? Sign Up",
            style: TextStyle(color: Color(0x77000000)),
          )
        ],
      )
          // child: Text(
          //   "Login Page",
          //   style: TextStyle(
          //     color: Colors.deepPurple,
          //     fontSize: 22,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: "monospace",
          //   ),
          // ),
          ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.pop(context),
      //   child: Icon(Icons.change_circle_outlined),
      // ),
    );
  }
}
