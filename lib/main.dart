import 'package:flutter/material.dart';
import 'package:flutter_everythings/theme/color_themes.dart';
import 'package:flutter_everythings/views/home.dart';
import 'package:get/get.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'bindings/allBindings.dart';
import 'bottombars/login.dart';
import 'check_connection/internent_controller.dart';
import 'package:hive/hive.dart';
Future<void> main()  async{

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter("postHive");
  // await Hive.openBox<List>('postBox'); //Create a box,(can create at main.dart is fine) THIS STORE LIST OR ANY YOU SPECIED
  await Hive.openBox('postBox'); //Create a box,(can create at main.dart is fine) THIS BOX STORE ANY DATA

  Get.put(ConnectivityController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          FlutterQuillLocalizations.delegate,
        ],
      initialBinding:AllBindindgs(), //This is bindings means all controller group and once and i can access any in my UIs ,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      // theme: ThemeData.dark(useMaterial3: false).copyWith(),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      
      // darkTheme: ThemeData.dark(useMaterial3: true).copyWith(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,

      home: HomeScreen(),
      // home: Login(),
    );
  }
}
