import 'package:flutter/material.dart';
import 'package:health_ui/models/dummyData.dart';
import 'package:health_ui/widget/categoryItem.dart';

class GridItems extends StatelessWidget {
  const GridItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top:2.0,
      ),
      child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: 345,
            child: GridView.builder(
              itemCount: DUMMY_CATEGORIES.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.0
              ),
              itemBuilder: (context, i) =>
                  CategoryItem(
                     DUMMY_CATEGORIES[i].imageUrl,
                    DUMMY_CATEGORIES[i].title,
                    DUMMY_CATEGORIES[i].icon,
                  ),
            ),
          )
      ),
    );
  }
}



// GridView(
// children: DUMMY_CATEGORIES
//     .map((catData) => CategoryItem(catData.imageUrl, catData.title))
// .toList(),
// gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
// maxCrossAxisExtent: 200,
// crossAxisSpacing: 20,
// mainAxisSpacing: 20,
// childAspectRatio: 1.5,
// ),
// ),
