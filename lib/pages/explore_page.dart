import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:memeous_app/widgets/recommended_groups.dart';
// import 'package:memeous_app/widgets/recommended_users.dart';
import 'package:memeous_app/widgets/search_bar.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Widget> pageList = [
    ExplorePage(),
  ];
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
        resizeToAvoidBottomInset: false,
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
        body: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "You may wanna explore...",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 2,
              child: Column(children: [
                TabBar(
                  tabs: [
                    Tab(
                        icon: Text(
                      "Memers",
                      style: TextStyle(color: Colors.white),
                    )),
                    Tab(
                        icon: Text(
                      "groups",
                      style: TextStyle(color: Colors.white),
                    )),
                  ],
                ),
                // TabBarView(children: [
                //   RecGroups(),
                //   RecUsers(),
                // ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
