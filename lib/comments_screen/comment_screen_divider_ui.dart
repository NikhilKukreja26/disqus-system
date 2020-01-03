import 'package:disqus_system/constants.dart';
import 'package:flutter/material.dart';

class CommentScreenDividerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 30.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: blackColor,
                    width: 0.5,
                  ),
                ),
              ),
              child: SizedBox(
                height: 150.0,
                width: double.infinity,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Image.asset(
              'assets/images/nikhil.png',
              width: 60,
              height: 60,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          flex: 6,
          child: Container(
            width: double.infinity,
            child: ListTile(
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                   'Jenny Hess',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Just now',
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
                      'Elliot you are always so right :)',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),
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
    );
  }
}
