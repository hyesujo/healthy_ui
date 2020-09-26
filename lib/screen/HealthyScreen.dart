import 'package:flutter/material.dart';
import 'package:health_ui/widget/PhotoList.dart';
import 'package:health_ui/widget/gridItem.dart';

class HealthyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Row(
              children:[
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 26,
                    ),
                    child: Text(
                      'Hey, Johyesu',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(
              top: 40,
              left: 125,
            ),
            child: IconButton(
              icon: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
              image: AssetImage('assets/images/tom.jpg',),
              fit: BoxFit.cover
    ),
              ),
              ),
              onPressed: (){},
            ),
          ),
        ),
              ]
            ),
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            GridItems(),
            Container(
              padding: EdgeInsets.only(
                  left: 20
              ),
                child: Text('Guess you like it',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23
                ),
                ),
            ),
            SizedBox(
              height: 10,
            ),
            PhotoList(),
            SizedBox(
              height: 20,
            ),
     ],
        ),
      ),
    );
  }
}

// AppBar(
// centerTitle: false,
// title: Padding(
// padding: const EdgeInsets.only(
// top: 30,
// left: 5.0),
// child: const Text(
//
// ),
// backgroundColor: Colors.transparent,
// elevation: 0.0,
// actions: [
// Padding(
// padding: const EdgeInsets.only(
// right: 10,
// top: 20),
// child:
// )
// ),
// ),
// onPressed: (){}
// ),
// ),
// ],
// ),




