import 'package:flutter/material.dart';
import 'package:flutter_everythings/views/Leassons/getx_router.dart';
import 'package:flutter_everythings/views/Leassons/getxstorage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'Leassons/auto_redirect.dart';
import 'Leassons/dependencies.dart';
import 'Leassons/forms_validate.dart';
import 'Leassons/getBuilder.dart';
import 'Leassons/imagepicker.dart';
import 'Leassons/videoplayer.dart';
import 'Leassons/workers.dart';

// Future<void> myStorage()async{
//   await GetStorage.init();
//
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Flutter EveryThings'),
         centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              MaterialButton(
                textColor: Colors.white,
                  color: Colors.deepOrange,
                  onPressed: () async {
                  // Get.off(GetxRouter1());//This enable you to go without come back
                  //
                    Get.to(()=>GetxRouter1(),
                      // fullscreenDialog: true,
                      curve: Curves.bounceInOut,
                      transition: Transition.zoom,
                      duration: Duration(seconds: 1),

                    );

                 // var data = await   Get.to(GetxRouter1());
                 // print('data is $data');
                  },
                child: Text('Router'),
              ),

              MaterialButton(
                color: Colors.green,
                  onPressed: (){
                  Get.to(GetxStorage());
                  },
                child: Text('GetStorage'),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: (){
                  Get.to(GetBuilders());
                },
                child: Text('GetBuilder'),
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: (){
                  Get.to(Workerss());
                },
                child: Text('workers'),
              ),
              MaterialButton(
                color: Colors.cyan,
                onPressed: (){
                  Get.to(DependenciesEnjection());
                },
                child: Text('Dependencies'),
              ),
              MaterialButton(
                color: Colors.cyan,
                onPressed: (){
                  Get.to(ImagePicker());
                },
                child: Text('image Picker'),
              ),
              MaterialButton(
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  Get.to(MyVideoPlayer());
                },
                child: Text('video player'),
              ),
              MaterialButton(
                color: Colors.pinkAccent,
                onPressed: (){
                  Get.to(MyFormValidate());
                },
                child: Text('Form Validation'),
              ),
              MaterialButton(
                color: Colors.indigoAccent,
                onPressed: (){
                  Get.to(AutoRedirect());
                },
                child: Text('Auto Redirect'),
              )

            ],
          ),
        ),
      ),
    );
  }
}
