import 'package:flutter/material.dart';
import 'package:health_ui/screen/health_detail_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final AssetImage imageUrl;
  final AssetImage icon;

  CategoryItem(
      this.imageUrl,
      this.title,
      this.icon
      );

  void selectCategory(BuildContext ctx) {
   Navigator.of(ctx).push(MaterialPageRoute(builder: (_) =>
       HealthDetailScreen(),
   ));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: const EdgeInsets.only(
                  left: 105,
                  top: 25,
              ),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: icon,
                    fit: BoxFit.cover,
                    scale: 1.0
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: 40,
              left: 13),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                ),
              ),
            ),
          ]
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: imageUrl,
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
