import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/responsive_uis/responsive_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});


  @override
  Widget build(BuildContext context) {
    final screen_w = MediaQuery.of(context).size.width;
    final screen_h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red, Colors.purple])),),),
      backgroundColor:screen_w <500 ? Colors.green: Colors.red,
      body: SafeArea(
          child: ResponsiveHelper(
            mobile: MobileWidget(screen_w: screen_w, screen_h: screen_h),
            tablet: TabletWidget(),
          )
      )
    );

      // body: SafeArea(child:
      // LayoutBuilder(
      //   builder: (context, constraints) {
      //     if(constraints.maxWidth <700){
      //       return MobileWidget(screen_w: screen_w, screen_h: screen_h);
      //     }
      //     else{
      //       return TabletWidget();
      //     }
      //   }
      // )),
    // ) ;
  }
}

class TabletWidget extends StatelessWidget {
  const TabletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Flexible(
          child: Row(
            children: [
              SizedBox(
                // height: 100.h,
                width: 90.w,
                child: FittedBox(
                  child: Image.asset('images/img3.jpeg'),
                ),
              ),
              SizedBox(
              // height: 900.h,
              width: 90.w,
              child:
              Text('Pharmacy connected systems refers to a unified, digital, and networked infrastructure that connects a pharmacys internal operations with external healthcare stakeholders. This ecosystem integrates Pharmacy Management Systems (PMS) with Electronic Medical Records (EMR), Electronic Prescribing (e-prescribing) platforms, insurance providers, and suppliers, allowing for real-time data exchange, improved patient safety, and increased operational effici', textAlign: TextAlign.center,maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10.sp, ))),
    
            ],
          ),
        )
    );
  }
}

class MobileWidget extends StatelessWidget {
  const MobileWidget({
    super.key,
    required this.screen_w,
    required this.screen_h,
  });

  final double screen_w;
  final double screen_h;

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Column(
          children: [
            SizedBox(
              height: 100.h,
              width: 600.w,
              child: FittedBox(
                child: Image.asset('images/img3.jpeg'),
    
              ),
            ),
            Text('Pharmacy connected systems" refers to a unified, digital, and networked infrastructure that connects a pharmacys internal operations with external healthcare stakeholders. This ecosystem integrates Pharmacy Management Systems (PMS) with Electronic Medical Records (EMR), Electronic Prescribing (e-prescribing) platforms, insurance providers, and suppliers, allowing for real-time data exchange, improved patient safety, and increased operational effici', textAlign: TextAlign.center,),
            Text(" wid:$screen_w"),
            Text("he: $screen_h"),
          ],
        )
    );
  }
}
