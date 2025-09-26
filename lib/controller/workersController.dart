import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyIncrementControllerWorker extends GetxController{
  
  var count =0.obs;
  
  void increments(){
    count++;
  }



  var inputData =''.obs;
  void textFieldData(String? val){
    inputData.value =val!;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    
    ever(count,(_)=> print(count) ///This is used To trigger once changes mades
    );
    everAll([count,inputData],(_)=> print(count) ///This is used To trigger once changes mades and take List
    );
    debounce(inputData,(_){
      print('data is : $inputData'); //This is Well good For searching Purpose
    }, time: Duration(seconds: 2) );


    interval(inputData,(_){
      print('after 3 sec print :$inputData');
    }, time: Duration(seconds: 3));


    Timer.periodic(Duration(seconds: 2),(_){ //NB this is same as setInterval in JS
      // print("object");
      // count.value++;
    } );

    Timer(Duration(seconds: 2), () { //NB this is same as setTimeout in JS
      print('xx');
});
  }




  
}
// Timer(Duration(seconds: 3), () {
// message.value = "Hello, 3 seconds passed!";
// print(message.value);
// });