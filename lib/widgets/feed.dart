import 'package:flutter/material.dart';
import 'package:memeous_app/widgets/posts.dart';
import '../data/Post_data.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pData = postData
        .map((pData) => Post(
              username: pData.username,
              caption: pData.caption,
              imageUrl: pData.imageUrl,
              comments: pData.comments,
              group: pData.group,
              likes: pData.likes,
            ))
        .toList();
    return Scaffold(
      body: kIsWeb
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  width: 500,
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return Post(
                          username: pData[index].username,
                          group: pData[index].group,
                          caption: pData[index].caption,
                          imageUrl: pData[index].imageUrl,
                          likes: pData[index].likes,
                          comments: pData[index].comments);
                    },
                    itemCount: pData.length,
                  ),
                ),
              ],
            )
          : Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Post(
                      username: pData[index].username,
                      group: pData[index].group,
                      caption: pData[index].caption,
                      imageUrl: pData[index].imageUrl,
                      likes: pData[index].likes,
                      comments: pData[index].comments);
                },
                itemCount: pData.length,
              ),
            ),
    );
  }
}
