import 'package:flutter/material.dart';
import 'package:health_ui/models/subCategory.dart';
import 'package:health_ui/widget/subcategoryitem.dart';

class SubcategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
          subCategories.length,
              (i) => Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SubCategoryItem(
                  subCategory: subCategories[i],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
