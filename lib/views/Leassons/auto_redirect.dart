import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/autoredirect.dart';

class AutoRedirect extends StatefulWidget {
  const AutoRedirect({super.key});

  @override
  State<AutoRedirect> createState() => _AutoRedirectState();
}

class _AutoRedirectState extends State<AutoRedirect> {

  MyAutoDedirectcontroller controller =Get.put(MyAutoDedirectcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Auto redirect'),
            Obx(()=>Text(controller.message.value))
          ],
        ),
      ),
    );
  }
}
