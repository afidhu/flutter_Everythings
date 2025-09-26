import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class GetxRouter1 extends StatefulWidget {
  const GetxRouter1({super.key});

  @override
  State<GetxRouter1> createState() => _GetxRouter1State();
}

class _GetxRouter1State extends State<GetxRouter1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('router1'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple)
              ),
                onPressed: (){
                  Get.back(result: 'Data from back xx');
                },
                child: Text('Back with data', style: TextStyle(color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
