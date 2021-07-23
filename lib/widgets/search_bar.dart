import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            isDense: true,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white),
            hoverColor: Colors.white,
            focusColor: Colors.yellowAccent,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.white, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Colors.yellow, width: 2)),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hoverColor: Colors.yellow,
              onPressed: () {},
            )),
      ),
    );
  }
}
