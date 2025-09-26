import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/formValidation.dart';

class MyFormValidate extends StatefulWidget {
  const MyFormValidate({super.key});

  @override
  State<MyFormValidate> createState() => _MyFormValidateState();
}

class _MyFormValidateState extends State<MyFormValidate> {

  MyFormValidateController controller =Get.put(MyFormValidateController());

  // final _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Form Validation'),
            Form(
              key: controller.formkey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                   TextFormField(
                     decoration: InputDecoration(
                       enabled: true,
                       hintText: 'Enter your email',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20)
                       )
                     ),
                     validator: (value){
                       return controller.ValidateEmail(value!);
                     },
                   ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      validator: (value){
                        return controller.ValidatePassword(value!);
                      },
                    )
                  ],
                )
            ),
            ElevatedButton(
                onPressed: controller.checkLogin,
                child: Text('Submit')
            )
          ],
        ),
      ),
    );
  }
}
