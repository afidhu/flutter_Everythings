import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({super.key});

  @override
  Widget build(BuildContext context) {

    final style_form =  InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      filled: true,
        fillColor: Colors.white

    );
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SafeArea(
            child:Container(
              width: 170.w,
              height: 269.h,
              child: Column(
                children: [
                  Text("Responsive Ui by use Flutter_screenUtil", style: TextStyle(fontSize: 10.sp),),
                  Form(child: Column(
                    spacing: 10,
                    children: [
                      TextFormField(
                        decoration: style_form
                      ),
                      TextFormField(
                        decoration: style_form
                      ),
                      
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.indigo)
                        ),
                          onPressed: (){},
                          child: Text("Submit", style: TextStyle(fontSize: 10.sp),)
                      )
                    ],
                  ))
                ],
              ),
            )
        ),
      ),
    );
  }
}
