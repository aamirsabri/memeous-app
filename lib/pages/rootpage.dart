import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import './community_page.dart';
import './explore_page.dart';
import 'package:memeous_app/pages/homepage.dart';
import './messages.dart';
import './menu_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _page = 0;

  List pages = [
    {
      'title': 'Home',
      'icon': CupertinoIcons.home,
      'page': HomePage(),
      'index': 0,
    },
    {
      'title': 'Community',
      'icon': CupertinoIcons.person_2,
      'page': CommunityPage(),
      'index': 1,
    },
    {
      'title': 'Explore',
      'icon': Feather.search,
      'page': ExplorePage(),
      'index': 2,
    },
    {
      'title': 'Messages',
      'icon': CupertinoIcons.mail,
      'page': MessagesPage(),
      'index': 3,
    },
    {
      'title': 'Menu',
      'icon': CupertinoIcons.line_horizontal_3,
      'page': MenuPage(),
      'index': 4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page]['page'],
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 5),
            for (Map item in pages)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: IconButton(
                  icon: Icon(
                    item['icon'],
                    color: item['index'] != _page
                        ? Colors.grey
                        : Theme.of(context).accentColor,
                    size: 20.0,
                  ),
                  onPressed: () => navigationTapped(item['index']),
                ),
              ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    setState(() {
      _page = page;
    });
  }
}
