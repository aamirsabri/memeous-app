import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memeous_app/utils/routes.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPassVisible = false;
  bool strongPass = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Colors.black,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      home: Scaffold(
          body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/assets/images/WhiteLogo.png",
                    height: 100,
                    width: 100,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Join Memeous!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "username",
                      labelStyle: TextStyle(color: Colors.white),
                      hoverColor: Colors.white,
                      focusColor: Colors.yellowAccent,
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "email address",
                      labelStyle: TextStyle(color: Colors.white),
                      hoverColor: Colors.white,
                      focusColor: Colors.yellowAccent,
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "password",
                      labelStyle: TextStyle(color: Colors.white),
                      hoverColor: Colors.white,
                      focusColor: Colors.yellowAccent,
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      suffixIcon: IconButton(
                        icon: isPassVisible
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        color: Colors.white,
                        onPressed: () =>
                            setState(() => isPassVisible = !isPassVisible),
                      ),
                    ),
                    obscureText: !isPassVisible,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "your password must have atleast six characters",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.rootpage);
                    },
                    child: Text("Join"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: Size(150, 50)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Routes.login);
                      },
                      child: Text("I already have an account")),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
