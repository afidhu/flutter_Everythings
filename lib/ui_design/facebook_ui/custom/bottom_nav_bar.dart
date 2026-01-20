
import 'package:flutter/material.dart';

import '../screens/fb_home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  var myCurrentIndex =0;
  final List pages =[
    FbHomeScreen(),
    Demp(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: DefaultTabController(length: length, child: child),
      body:pages[myCurrentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: myCurrentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (val){
          print('index is $val');
          setState(() {
            myCurrentIndex = val;
          });
        },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.videocam),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add_box),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.group),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
          ]
      ),
    );
  }
}

class Demp extends StatefulWidget {
  const Demp({super.key});

  @override
  State<Demp> createState() => _DempState();
}

class _DempState extends State<Demp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
