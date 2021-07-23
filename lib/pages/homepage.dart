import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memeous_app/pages/notifications_page.dart';
import 'package:memeous_app/pages/upload_new.dart';
import 'package:memeous_app/widgets/feed.dart';

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            scaffoldBackgroundColor: Colors.black,
            primaryTextTheme: GoogleFonts.latoTextTheme(),
            iconTheme: IconThemeData(color: Colors.white),
            appBarTheme: AppBarTheme(backgroundColor: Colors.black)),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: Icon(Icons.add_circle),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new UploadNew()));
                },
                color: Colors.white,
              ),
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NotificationPage()));
                  })
            ],
            title: Image.asset(
              "lib/assets/images/WhiteLogoWithText.png",
              height: 150,
              width: 150,
            ),
          ),
          body: Feed(),
        ));
  }
}
