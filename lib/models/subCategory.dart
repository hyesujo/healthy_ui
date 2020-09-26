
import 'package:flutter/material.dart';

class SubCategory {
  final String title;
  final String imageUrl;
  final String content;

  SubCategory({
   @required this.title,
    @required this.imageUrl,
    @required this.content
});
}

List<SubCategory> subCategories = [
  subCategory1,subCategory2,subCategory3
];

SubCategory subCategory1 = SubCategory(
    title: 'Facial care',
    imageUrl: 'assets/images/pattern1.png',
   content: '51,000 people are watching'
);
SubCategory subCategory2 = SubCategory(
    title: 'Healthy diet',
    imageUrl: 'assets/images/pattern22.png',
    content: '48,000 people are watching'
);
SubCategory subCategory3 = SubCategory(
    title: 'Food diet',
    imageUrl: 'assets/images/pattern33.png',
    content: '41,000 people are watching'
);