
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/dependencycontroller.dart';

class DependenciesEnjection extends StatefulWidget {
  const DependenciesEnjection({super.key});

  @override
  State<DependenciesEnjection> createState() => _DependenciesEnjectionState();
}

class _DependenciesEnjectionState extends State<DependenciesEnjection> {

  // DependeciesController controller =Get.put(DependeciesController(),tag: 'instance1', permanent: true);

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => DependeciesController()); ///here register lazy controller it initianalized only once access it propertis or varianle

    // Get.lazyPut<DependeciesController>(() => DependeciesController()); ///here register lazy controller it initianalized only once access it propertis or varianle

    DependeciesController   depeController =Get.find<DependeciesController>();
    // final   depeController =Get.find<DependeciesController>(); //This is same as above one

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Dependencies Ejections'),
      ),
      body: Center(
        child:Column(
          children: [
            Obx(()=>
                // Text(Get.find<DependeciesController>().count.value.toString()),
              Text(depeController.count.value.toString())
            ),

            ElevatedButton(
                onPressed: (){
                  // Get.find<DependeciesController>().increment();
                  depeController.increment();
                },
                child: Text('increment')
            )
          ],
        ),

    )

    );
  }
}
