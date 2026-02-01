
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../dio_interceptor.dart';
import 'error_class.dart';

class DioInterceptorsScreen extends StatefulWidget {
  const DioInterceptorsScreen({super.key});

  @override
  State<DioInterceptorsScreen> createState() => _DioInterceptorsScreenState();
}

class _DioInterceptorsScreenState extends State<DioInterceptorsScreen> {

  DioInterceptorsController dioInterceptorsController =Get.put(DioInterceptorsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('data')
      ),
    );
  }
}
