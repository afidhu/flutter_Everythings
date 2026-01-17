import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),(){
      Get.off(HomeScreen());
    });
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ClipRect(
          child: Image.asset('images/spla2.png', fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
        ),

    );
  }
}
