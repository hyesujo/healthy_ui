import 'package:flutter/material.dart';
import 'package:health_ui/screen/HealthyScreen.dart';
import 'package:health_ui/screen/exploreScreen.dart';
import 'package:health_ui/screen/health_detail_screen.dart';

 class TabScreen extends StatefulWidget {
   @override
   _TabScreenState createState() => _TabScreenState();
 }
 
 class _TabScreenState extends State<TabScreen> {
  final  List<Widget> _page = [
     HealthyScreen(),
     ExploreScreen(),
   ];

  int _selectedPageIndex = 0;

 void _selectPage(int index) {
  setState(() {
    _selectedPageIndex =index;
  });
 }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         body: _page[_selectedPageIndex],
       floatingActionButton: Transform.scale(
         scale: 0.8,
         child: FloatingActionButton(
           highlightElevation: 0.0,
           elevation: 2.0,
           splashColor: Colors.orange,
           child: Container(
             width: 60,
             height: 60,
             child: Icon(Icons.add,
               size: 40,
               color: Colors.white,
             ),
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               gradient: LinearGradient(
                 colors: [
                   Colors.orange[100],
                   Colors.orange[400]
                 ]
               )
             ),
           ),
           onPressed: (){},
         ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: BottomNavigationBar(
         onTap: _selectPage,
         backgroundColor:
         Theme.of(context).primaryColor,
         selectedItemColor: Colors.orangeAccent,
         unselectedItemColor: Colors.grey[300],
         currentIndex: _selectedPageIndex,
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text('Home'),
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.explore),title: Text('explore'),
           ),
         ],
       ),
     );
   }
 }
 