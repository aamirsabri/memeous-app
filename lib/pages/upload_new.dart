import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadNew extends StatefulWidget {

  @override
  _UploadNewState createState() => _UploadNewState();
}

class _UploadNewState extends State<UploadNew> {
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
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.yellow,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Upload new content",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
