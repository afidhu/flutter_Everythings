
import 'package:flutter/material.dart';

class ResponsiveUi extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveUi({super.key, required this.mobile, required this.tablet, required this.desktop});

  static bool isMoble(BuildContext context) => MediaQuery.of(context).size.width<600;
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >=600 && MediaQuery.of(context).size.width < 1200;
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >=1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth >=1200){
        return desktop;
      }else if(constraints.maxWidth >=600){
        return tablet ?? mobile;
      }else{
        return mobile;
      }
    });
  }
}
