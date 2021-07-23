import 'package:memeous_app/pages/notifications_page.dart';
import 'package:memeous_app/pages/rootpage.dart';
import 'package:memeous_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:memeous_app/pages/signup_page.dart';
import 'package:memeous_app/pages/upload_new.dart';
import 'package:memeous_app/utils/routes.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.yellow,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LogIn(),
        Routes.login: (context) => LogIn(),
        Routes.signup: (context) => SignUp(),
        Routes.rootpage: (context) => RootPage(),
        Routes.notificationspage: (context) => NotificationPage(),
        Routes.uploadnew: (context) => UploadNew(),
      },
    );
  }
}
