import 'package:flutter/material.dart';

class ResponsiveHelper extends StatelessWidget {

  final mobile;
  final tablet;
  // final window;
  // final web;
  const ResponsiveHelper({super.key, this.mobile, this.tablet});

  @override
  Widget build(BuildContext context) {
    // final screen_w = MediaQuery.of(context).size.width;
    // final screen_h = MediaQuery.of(context).size.height;
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth < 700){
            return mobile;
          }
          else{
            return tablet;
          }

        }
    );
  }
}
