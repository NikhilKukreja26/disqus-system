import 'package:disqus_system/alert_dialogs/alert_dialog.dart';
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
  Widget commentTextArea() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: new EdgeInsets.only(
              left: MediaQuery.of(context).size.height / 50.0,
              bottom: 150.0,
              right: 10.0,
            ),
          ),
          maxLines: null,
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          CustomAlertDialogs.exitDialog(context);
          return null;
        },
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
              alignment: Alignment.bottomLeft,
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
                  commentTextArea(),
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: 150.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      color: Colors.blue[300],
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.edit,
                            ),
                          ),
                          Container(
                            child: Text('Add Reply'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
