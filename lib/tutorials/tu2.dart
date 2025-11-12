

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/getx_service.dart';


class Tu2 extends StatefulWidget {
  const Tu2({super.key});

  @override
  State<Tu2> createState() => _Tu1State();
}

class _Tu1State extends State<Tu2> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Obx(()=>Text("${Get.find<Services>().count.value}")),
            FilledButton(
                onPressed: (){
                  Get.find<Services>().counter();
                },
                child: Text('Decrement')
            )
          ],
        )
    );
  }
}
