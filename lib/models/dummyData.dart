import 'package:flutter/material.dart';
import 'package:health_ui/models/category.dart';

const DUMMY_CATEGORIES = [
  Category(
      id: 'c1',
      title: 'Daily\nexploration',
      imageUrl: AssetImage(
        'assets/images/pattern11.png',
      ),
      icon: AssetImage(
          'assets/icons/food.png'
      ),
  ),
  Category(
      id: 'c2',
      title: 'Residential\nupgrading',
      imageUrl: AssetImage('assets/images/pattern22.png'),
      icon: AssetImage(
          'assets/icons/read.png'
      ),
  ),
  Category(
      id: 'c3',
      title: 'Life\ndevelopment',
      imageUrl: AssetImage('assets/images/pattern33.png'),
      icon: AssetImage(
          'assets/icons/smiling.png'
      ),),
  Category(
      id: 'c4',
      title: 'Family\nmanagement',
      imageUrl: AssetImage('assets/images/pattern44.png'),
      icon: AssetImage(
          'assets/icons/home.png'
      ),
  ),
];


