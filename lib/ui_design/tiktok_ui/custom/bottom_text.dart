
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomTextWidget extends StatelessWidget {
  final String name;
  final String text;
  final String detail;
  const BottomTextWidget({
    super.key, required this.name, required this.text, required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 8.w,
        child: Column(
          spacing: 7,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(color: Colors.white, fontSize: 12.sp),),
            Text(text, style: TextStyle(color: Theme.of(context).cardColor),),
            Text(detail, style: TextStyle(color:Colors.white),),
          ],
        )
    );
  }
}

