import 'package:flutter/material.dart';
import 'package:flutter_everythings/views/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'bindings/allBindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding:AllBindindgs(), //This is bindings means all controller group and once and i can access any in my UIs ,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}
