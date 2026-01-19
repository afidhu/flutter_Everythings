

import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/config/pallete_color.dart';

class UpBarIcons extends StatelessWidget {
  final IconData icons;
  final double iconSize;
  final Function onPress;
  const UpBarIcons({super.key, required this.icons, required this.iconSize, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: onPress(), icon: Icon(icons),color:Colors.blue);
  }
}
