import 'package:flutter/material.dart';

class CommentScreenSecondUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: Column(
        children: <Widget>[
          Row(
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
                          'Elliot Fu',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Yesterday at 12:30AM',
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
                            'This has been very useful for my research. Thanks as well!',
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
          ),
        ],
      ),
    );
  }
}
