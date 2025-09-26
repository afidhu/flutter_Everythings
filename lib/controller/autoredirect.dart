import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyAutoDedirectcontroller extends GetxController{

  final storage =GetStorage();

  var message ='  please wait'.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

    if(storage.read('email') != null){
      Future.delayed(Duration(seconds: 2),(){
        print('user login');
        message.value ='user has login Go to home page';
      });

    }else{
      print('user not login');
      message.value ='user not login';
    }
  }
}