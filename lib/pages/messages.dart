import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
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
            "Messages",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
