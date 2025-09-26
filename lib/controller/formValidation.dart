import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFormValidateController extends GetxController{

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword  = TextEditingController();

  final formkey =GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  String? ValidateEmail(String val){

    if(!GetUtils.isEmail(val)){
      return 'Invalid Email';
    }
    return null;
  }

  String? ValidatePassword(String val){
    if(val.length <=6){
      return 'Password is too short';
    }
    return null;
  }


  void checkLogin(){
    final isValid =formkey.currentState!.validate();
    if(!isValid){
      return ;
    }
    formkey.currentState!.save();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    controllerEmail.dispose();
    controllerPassword.dispose();
  }

}