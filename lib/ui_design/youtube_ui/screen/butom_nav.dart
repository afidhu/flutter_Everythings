import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/youtube_ui/screen/youtube_home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var current_index=0;
  List pagesList =[
    YoutubeHome(),
    YoutubeHome(),
    YoutubeHome(),
    YoutubeHome(),
    YoutubeHome(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[current_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: current_index,
      onTap: (val){
          setState(() {
            current_index =val;
          });
          debugPrint(val.toString());
      }
      ,items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          activeIcon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "explore",
          activeIcon: Icon(Icons.explore)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "add",
          activeIcon: Icon(Icons.add)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: "subscriptions",
          activeIcon: Icon(Icons.subscriptions_outlined)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "library",
          activeIcon: Icon(Icons.video_library_outlined)
        ),

      ]),
    );
  }
}
