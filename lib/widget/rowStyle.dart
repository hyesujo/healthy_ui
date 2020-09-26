import 'package:flutter/material.dart';

class RowStyle extends StatelessWidget {
  const RowStyle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 17),
          child: Text(
            '51,000 people are studying',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icons/likes2.png')
                )
            ),
          ),
        ),
        Container(
          padding:EdgeInsets.only(left: 4),
          child: Text('1.1k',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            width: 19,
            height: 19,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icons/chat.png')
              ),
            ),
          ),
        ),
        Container(
          padding:EdgeInsets.only(left: 4),
          child: Text('34',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ],
    );
  }
}

