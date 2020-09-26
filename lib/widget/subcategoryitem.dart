import 'package:flutter/material.dart';
import 'package:health_ui/models/subCategory.dart';

class SubCategoryItem extends StatelessWidget {
  final SubCategory subCategory;

  SubCategoryItem({
    this.subCategory,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265,
      height: 85,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(subCategory.imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(13),
      ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           padding: EdgeInsets.only(
             top: 20,
             left: 20
         ),
           child: Text(
             subCategory.title,
           style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 19
           ),
           ),
         ),
         Container(
           padding: EdgeInsets.only(
               top: 7,
               left: 20
           ),
           child: Text(
             subCategory.content,
             style: TextStyle(
               color: Colors.white,
               fontSize: 11,
             ),
           ),
         ),
       ],
     ),
    );
  }
}
