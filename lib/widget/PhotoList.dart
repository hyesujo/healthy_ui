import 'package:flutter/material.dart';
import 'package:health_ui/models/photo.dart';
import 'package:health_ui/widget/photocard.dart';


class PhotoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              images.length,
                  (i) => Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5,
                      left: 10),
                      child: PhotoCard(
                        photo: images[i],
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
//


// AspectRatio(
// aspectRatio: 0.89,
// ),
// ListView.builder(
// padding: EdgeInsets.only(
// left: 10,
// right: 10,
// ),
// itemCount: images.length,
// itemBuilder: (context, i) =>
// Padding(
// padding: const EdgeInsets.all(12.0),
// child: PhotoCard(
// photo: images[i],
// ),
// ),
// ),