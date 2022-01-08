import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import '../utils/routes.dart';

// to add images and icons, create folder assets/images and assets/icons and uncomment assets and 1 following line in pubspec.yaml

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("./assets/images/login_image.png"),
            SizedBox(
              height: 100,
            ),
            Text(
              "Welcome $name",
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
                    onChanged: (val) {
                      setState(() {
                        name = val;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // custom button using container
                  InkWell(
                    onTap: () async {
                      setState(() {
                        buttonPressed = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: 50,
                      width: buttonPressed ? 50 : 150,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(buttonPressed ? 50 : 6)),
                      child: buttonPressed
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                      alignment: Alignment.center,
                    ),
                  ),

                  // ElevatedButton(
                  // onPressed: () {
                  //   Navigator.pushNamed(context, MyRoutes.homeRoute);
                  // },
                  // child: Text('Login'),
                  // style: ButtonStyle(
                  //     foregroundColor:
                  //         MaterialStateProperty.all(Colors.white),
                  //     backgroundColor:
                  //         MaterialStateProperty.all(Colors.deepPurple),
                  //     minimumSize:
                  //         MaterialStateProperty.all(Size(120, 40))))
                ],
              ),
            ),
            Text(
              "New to first_app ? Sign Up",
              style: TextStyle(color: Color(0x77000000)),
            )
          ],
        ),
      )),
    );
  }
}
