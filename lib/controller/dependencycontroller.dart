
import 'package:get/get.dart';

class DependeciesController extends GetxController{

  var count =0.obs;

  void increment(){
    count.value++;
  }
}