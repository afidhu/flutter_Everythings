

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  var count =0.obs;

  int ? counter(){
    count.value++;
    // update();
    return null;
  }
}