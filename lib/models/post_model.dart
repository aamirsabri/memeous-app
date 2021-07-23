import 'package:flutter/material.dart';

class PostModel {
  String username;
  String group;
  String caption;
  String imageUrl;
  int likes;
  int comments;


  PostModel(
      {
      @required this.username,
      @required this.group,
      @required this.caption,
      @required this.imageUrl,
      @required this.likes,
      @required this.comments});
}
