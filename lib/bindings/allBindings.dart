import 'package:get/get.dart';

import '../controller/dependencycontroller.dart';
import '../controller/increment.dart';

class AllBindindgs extends Bindings{


  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => DependeciesController(),);
    Get.lazyPut(() => MyIncrement(),);
  }

}