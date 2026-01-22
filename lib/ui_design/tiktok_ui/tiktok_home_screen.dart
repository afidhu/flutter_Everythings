
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/tiktok_ui/custom/bottom_text.dart';
import 'package:flutter_everythings/ui_design/tiktok_ui/custom/icons.dart';
import 'package:flutter_everythings/ui_design/tiktok_ui/custom/pages_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TiktokHomeScreen extends StatelessWidget {
  const TiktokHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Following'),
            SizedBox(width: 12.w,),
            Text('For you'),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton.outlined(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,))
        ],
      ),

      body: PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: (val){
          print('PageChanged');
        },
        physics: BouncingScrollPhysics(),
        children: [
        PageListWidget(img: "https://media.gettyimages.com/id/1990444472/photo/scandinavian-style-cozy-living-room-interior.jpg?s=1024x1024&w=gi&k=20&c=0nBWqiUE_RGJ-Ud4muxxJ7fAGuqWVz2-mKeQjvwK3lg=",),
        PageListWidget(img: "https://media.gettyimages.com/id/2110510132/photo/young-family-enjoying-in-sunny-day.jpg?s=612x612&w=0&k=20&c=vPoim8vSe3IFHEWJeQTCiHSbyE1cRYLubqyW-KGK8XU=",),

          PageListWidget(img: "https://media.gettyimages.com/id/171246403/photo/exterior-of-new-suburban-house.jpg?s=612x612&w=0&k=20&c=fM3a4esJjKfLQrEkljoaQGj86o3wmFTvTttZK-PJ_PE=",),
        PageListWidget(img: "https://media.gettyimages.com/id/2116804796/photo/playing-board-games-together.jpg?s=612x612&w=0&k=20&c=zl7yXBTq4xIG8Cju-R2sts8ZwHEHz3qqtWosDYWYcqc=",),
        PageListWidget(img: "https://avatars.githubusercontent.com/u/170732544?v=4",),

        ],
      ),
    );
  }
}

