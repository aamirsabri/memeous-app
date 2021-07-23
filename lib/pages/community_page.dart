import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Colors.black,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
          title: Image.asset(
            "lib/assets/images/WhiteLogoWithText.png",
            height: 150,
            width: 150,
          ),
        ),
        body: Center(
          child: Text(
            "Community Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
