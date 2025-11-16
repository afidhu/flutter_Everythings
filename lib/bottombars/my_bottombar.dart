import 'package:flutter/material.dart';

import 'bars/home.dart';
import 'bars/profile.dart';
import 'bars/search.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {

  int _selectedIndex = 0;

  final pages =[
    Home(),
    Search(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
              selectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]
      ),

    );
  }
}
