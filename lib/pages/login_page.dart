import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memeous_app/utils/routes.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isPassVisible = false;
  bool strongPass = false;
  bool buttonPressed = false;
  var username;
  var password;
  final _formKey = GlobalKey<FormState>();
  moveToHome() async {
    setState(() {
      buttonPressed = true;
    });
    await Future.delayed(Duration(milliseconds: 400));
    await Navigator.pushNamed(context, Routes.rootpage);
    setState(() {
      buttonPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var instance = Firestore.instance;
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
              child: Form(
                key: _formKey,
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
                      "Log in to Memeous!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
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
                    TextFormField(
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
                    StreamBuilder(stream:  instance.collection('test/UgCMMSVsCzSPUFiOKgNl/messeges').snapshots(),
                      builder: (ctx,streamSnapshot){
                        return InkWell(
                        onTap: () {
                        //  final documents = instance.collection('test/UgCMMSVsCzSPUFiOKgNl/messeges');
                        if(streamSnapshot.connectionState == ConnectionState.waiting){
                          print("data is loaging");
                        }
                          print("data from messeges  ${streamSnapshot.data.documents[0]['msg']}");
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          alignment: Alignment.center,
                          height: 50,
                          width: buttonPressed ? 50 : 150,
                          child: buttonPressed
                              ? Icon(Icons.done)
                              : Text(
                                  "Log In",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  buttonPressed ? 30 : 20),
                              color: Colors.yellow),
                        ));
                      },
                    ),
                    // InkWell(
                    //     onTap: () {
                    //       final documents = instance.collection('test/UgCMMSVsCzSPUFiOKgNl/messeges');
                    //       print("data from messeges " );
                    //       // print(instance.collection("test").document("F77LxD0NvfGKkk1St6TH").setData({
                    //       //   "username" : "userX",
                    //       // }).then((_){print("success"); }));
                    //      // moveToHome();
                    //     //  instance.collection("test/F77LxD0NvfGKkk1St6TH/messeges").snapshots().listen((event) {
                    //     //    event.documents.forEach((element) {
                    //     //      print("data element $element['msg']");
                    //     //      }
                    //     //      );
                    //     //   print("data $event");
                           
                    //     //   });
                    //     },
                    //     child: AnimatedContainer(
                    //       duration: Duration(milliseconds: 400),
                    //       alignment: Alignment.center,
                    //       height: 50,
                    //       width: buttonPressed ? 50 : 150,
                    //       child: buttonPressed
                    //           ? Icon(Icons.done)
                    //           : Text(
                    //               "Log In",
                    //               style: TextStyle(
                    //                 fontWeight: FontWeight.bold,
                    //                 fontSize: 18,
                    //               ),
                    //             ),
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(
                    //               buttonPressed ? 30 : 20),
                    //           color: Colors.yellow),
                    //     )),
                    // // ElevatedButton(
                    //   onPressed: () {

                    //     Navigator.pushNamed(context, Routes.rootpage);
                    //   },
                    //   child: Text("Log in"),
                    //   style: ElevatedButton.styleFrom(
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(20)),
                    //       minimumSize: Size(150, 50)),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.signup);
                        },
                        child: Text("I don't have an account")),
                    TextButton(
                        onPressed: () {}, child: Text("Forgot Password")),
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
