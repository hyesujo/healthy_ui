import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final AssetImage imageUrl;
  final AssetImage icon;

  const Category(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.icon});
}
