import 'package:flutter/cupertino.dart';

class Photo{
  final String image;
  final String title;

 const Photo({
    @required this.image,
    @required this.title
});
}

List<Photo> images = [photo1,photo2,photo3];

 Photo photo1 = Photo(
     image:'assets/images/yy.jpg',
    title: 'Healthy diet'
 );
  Photo photo2 = Photo(
      image: 'assets/images/hh.jpg',
    title: 'Facial care'
  );
  Photo photo3 = Photo(
      image: 'assets/images/pink3.jpg',
     title: 'Food diet'
  );
