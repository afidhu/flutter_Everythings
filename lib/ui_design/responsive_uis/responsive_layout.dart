import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});


  @override
  Widget build(BuildContext context) {
    final screen_w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor:screen_w <500 ? Colors.green: Colors.red,
      body: SafeArea(child:
      Container(
        child: Text("$screen_w"),
      )),
    ) ;
  }
}
