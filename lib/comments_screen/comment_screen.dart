import 'package:disqus_system/comments_screen/comment_screen_divider_ui.dart';
import 'package:disqus_system/comments_screen/comment_screen_first_ui.dart';
import 'package:disqus_system/comments_screen/comment_screen_second_ui.dart';
import 'package:disqus_system/comments_screen/comment_screen_third_ui.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Disqus System',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                CommentScreenFirstUI(),
                SizedBox(
                  height: 20,
                ),
                CommentScreenSecondUI(),
                CommentScreenDividerUI(),
                CommentScreenThirdUI(),
                // postDescription(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
