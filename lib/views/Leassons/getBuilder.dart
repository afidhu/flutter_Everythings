import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/increment.dart';


class GetBuilders extends StatefulWidget {
  const GetBuilders({super.key});

  @override
  State<GetBuilders> createState() => _GetBuildersState();
}

class _GetBuildersState extends State<GetBuilders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            GetX<MyIncrement>(
              init: MyIncrement(),
                builder: (controller){
                return Text(controller.count.toString());
                },
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: (){
                Get.find<MyIncrement>().Increment();
              },
              child: Text('increment'),
            )
          ],
        ),
      ),
    );
  }
}
