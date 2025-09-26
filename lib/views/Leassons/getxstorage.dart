import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class GetxStorage extends StatefulWidget {
  const GetxStorage({super.key});

  @override
  State<GetxStorage> createState() => _GetxStorageState();
}

class _GetxStorageState extends State<GetxStorage> {

  TextEditingController controllerEmail =TextEditingController();
  var storage =GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                hintText: 'Enter emil to validate',
                border: OutlineInputBorder()
              ),

            ),

            MaterialButton(
              color: Colors.blue,
                onPressed: (){
                if(GetUtils.isEmail(controllerEmail.text)){
                  storage.write('email', controllerEmail.text);
                  print('email is ${controllerEmail.text}');
                }else{
               Get.snackbar('error', 'Invalid email',
                 backgroundColor: Colors.red,
                 colorText: Colors.white
               );
                }
                },
              child: Text('Write'),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {

                });
                print('email is ${storage.read('email')}');
              },
              child: Text('Read'),
            ),
            Text('Email is ${storage.read('email')}'),
          ],
        ),
      ),
    );
  }
}
