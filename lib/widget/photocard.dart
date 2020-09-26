

import 'package:flutter/material.dart';
import 'package:health_ui/models/photo.dart';


class PhotoCard extends StatelessWidget {
 final Photo photo;

 PhotoCard({
   this.photo
}
);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
          width: 230,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(photo.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(photo.title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
      ]
    );
  }
}
