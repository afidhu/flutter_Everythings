import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends GetxService{ //THis use throughout the App

  var count =0.obs;
   int ? counter(){
     count.value--;
     return null;
   }
}