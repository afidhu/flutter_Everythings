import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyIncrement extends GetxController{

  var count =0.obs;

  void Increment()async{

   Timer(Duration(seconds: 1), (){
      print('ok incremente');
      count++;
    });
    // count++;
  }
}