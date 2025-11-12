
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/counterController.dart';
import 'controller/getx_service.dart';

class Tu1 extends StatefulWidget {
  const Tu1({super.key});

  @override
  State<Tu1> createState() => _Tu1State();
}

class _Tu1State extends State<Tu1> {
  @override

  Widget build(BuildContext context) {
    Get.lazyPut(()=>CounterController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(()=>Text("${Get.find<CounterController>().count.value}")),
          Obx(()=>Text("GetXService value${Get.find<Services>().count.value}")),
          FilledButton(
              onPressed: (){
                Get.find<CounterController>().counter();
              },
              child: Text('Increment')
          )
        ],
      )
    );
  }
}
