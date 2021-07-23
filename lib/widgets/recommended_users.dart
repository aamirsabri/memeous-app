import 'package:flutter/material.dart';

class RecUsers extends StatefulWidget {


  @override
  _RecUsersState createState() => _RecUsersState();
}

class _RecUsersState extends State<RecUsers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Group!",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "121338 Members",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
                Text(
                  "Content: We make memes",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
