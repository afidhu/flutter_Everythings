import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'my_bottombar.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),

      ),
      body: ElevatedButton(
          onPressed: (){
            Get.off(()=>MyBottomBar());
          },
          child: Text('Login')
      ),
    );
  }
}
