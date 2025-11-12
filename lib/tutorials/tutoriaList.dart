
import 'package:flutter/material.dart';
import 'package:flutter_everythings/tutorials/tu1.dart';
import 'package:flutter_everythings/tutorials/tu2.dart';
import 'package:flutter_everythings/tutorials/tu3.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TutorialLists extends StatefulWidget {
  const TutorialLists({super.key});

  @override
  State<TutorialLists> createState() => _TutorialListsState();
}

class _TutorialListsState extends State<TutorialLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial List'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.amber,
                onPressed: (){
                Get.to(()=>Tu1());
                },
              child: Text('dependencies'),
            ),
            MaterialButton(
              color: Colors.amber,
                onPressed: (){
                Get.to(()=>Tu2());
                },
              child: Text('GetxService'),
            ),MaterialButton(
              color: Colors.amber,
                onPressed: (){
                Get.to(()=>Tu3());
                },
              child: Text('Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
