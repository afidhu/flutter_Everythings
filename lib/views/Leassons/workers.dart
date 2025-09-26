import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/workersController.dart';

class Workerss extends StatefulWidget {
  const Workerss({super.key});

  @override
  State<Workerss> createState() => _WorkerssState();
}

class _WorkerssState extends State<Workerss> {


  MyIncrementControllerWorker controller =Get.put(MyIncrementControllerWorker());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Obx(()=>Column(
              children: [
                Text(controller.count.value.toString()),
                
                Text('Input data is : ${controller.inputData.value}'),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                  onChanged: controller.textFieldData,
                )
              ],
            )),

            MaterialButton(
              color: Colors.blueAccent,
              onPressed: controller.increments,
              child: Text('increment'),
            ),

          ],
        ),
      ),
    );
  }
}
