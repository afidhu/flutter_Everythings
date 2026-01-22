
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsWidget extends StatelessWidget {
  final IconData iconsH;
  final String text;
  const IconsWidget({
    super.key, required this.iconsH, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Icon(iconsH, color: Colors.white, size: 20.sp,),
          Text(text, style: TextStyle(color: Colors.black),)
        ],
    );
  }
}

