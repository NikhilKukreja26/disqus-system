import 'package:disqus_system/constants.dart';
import 'package:flutter/material.dart';

class CommentScreenThirdUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/nikhil.png',
              width: 60,
              height: 60,
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                child: ListTile(
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                       'Joe Henderson',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                         '5 days ago',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                           'Dude, this is awesome.Thanks so much',
                          style: commentStyling,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Reply',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
