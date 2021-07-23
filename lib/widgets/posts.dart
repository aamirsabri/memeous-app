import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Post extends StatefulWidget {
  String username;
  String group;
  String caption;
  String imageUrl;
  int likes;
  int comments;
  Post(
      {@required this.username,
      @required this.group,
      @required this.caption,
      @required this.imageUrl,
      @required this.likes,
      @required this.comments});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool likePressed = false;
  likePressedFunc() {
    setState(() {
      likePressed = !likePressed;
    });
  }

  final controller = TransformationController();
  void reset() {
    setState(() {
      controller.value = Matrix4.identity();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Card(
        color: Color.fromRGBO(33, 33, 33, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, bottom: 8, right: 8, top: 8),
              child: Row(
                children: [
                  Text("Posted by",
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.username,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 6),
              child: Text(
                widget.caption,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InteractiveViewer(
              onInteractionEnd: (details) => reset(),
              transformationController: controller,
              child: Image.network(
                widget.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 8, top: 5, bottom: 5),
                child: Text(
                  "Group: " + widget.username,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            likePressed
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: likePressed ? Colors.yellow : Colors.white,
                          ),
                          onPressed: likePressedFunc),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.likes.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.comments.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.report),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      width: 600,
    );
  }
}
