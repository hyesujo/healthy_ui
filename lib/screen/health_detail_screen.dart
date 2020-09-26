import 'package:flutter/material.dart';
import 'package:health_ui/widget/headerImage.dart';
import 'package:health_ui/widget/rowStyle.dart';
import 'package:health_ui/widget/subcategoryList.dart';

class HealthDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          iconSize: 33,
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:[
           HeaderImage(),
           SizedBox(
             height: 28,
           ),
           Container(
             padding: EdgeInsets.only(
               left: 17
             ),
             child: Text('Healthy diet',
               style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 26
               ),
             ),
           ),
           SizedBox(
             height: 15,
           ),
           Container(
             padding: EdgeInsets.only(
               left: 17,
               right: 15
             ),
             child: Text('Good and reasonable healthy eating habits are an important aspect of health care, which can make the body grow and develop healthy, Bad eating habits can lead normal physilogical disorders and infections...',
             style: TextStyle(
               color: Colors.grey,
               fontSize: 15,
               height: 1.5
             ),
             ),
           ),
           SizedBox(
             height: 20,
           ),
           RowStyle(),
           SizedBox(
             height: 35,
           ),
           Container(
             padding: EdgeInsets.only(
                 left: 17
             ),
             child: Text('Relevant Life Chapter',
               style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 23
               ),
             ),
           ),
           SizedBox(
             height: 18,
           ),
           SubcategoryList(),
           SizedBox(
             height: 20,
           ),
         ]
       ),
     ),
    );
  }
}

