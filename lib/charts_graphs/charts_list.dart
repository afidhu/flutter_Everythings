import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'chats_types/Cartesian_chart.dart';

class ChartsLists extends StatelessWidget {
  const ChartsLists({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Flutter Charts and Graphs'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 20,),
              MaterialButton(
                color: Colors.grey,
                onPressed: (){
                  Get.to(CartesianChart());
                },
                child: Text('  Cartesian Charts '),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}
