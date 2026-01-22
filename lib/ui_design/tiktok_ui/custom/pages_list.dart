
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/tiktok_ui/custom/bottom_text.dart';
import 'package:flutter_everythings/ui_design/tiktok_ui/custom/icons.dart';

class PageListWidget extends StatelessWidget {
  final String  img;
  const PageListWidget({
    super.key, required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(img,fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
        Positioned(
            bottom: 0,
            right: 8,
            child:
            Column(
              spacing: 8,
              children: [
                Stack(
                  children: [
                    const  CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,color: Colors.blue,  size: 20,)
                    ),

                    Positioned(
                        right: 0,
                        bottom: -4,
                        child: CircleAvatar(
                            radius: 11,
                            backgroundColor: Colors.red,
                            child: Icon(Icons.add, color: Colors.white, size: 20,))
                    ),
                  ],
                ),
                IconsWidget( iconsH: CupertinoIcons.heart, text: '1.3M',) ,
                IconsWidget( iconsH: Icons.message, text: '1.3M',) ,
                IconsWidget( iconsH: CupertinoIcons.bookmark_fill, text: '1.3M',) ,
                IconsWidget( iconsH: CupertinoIcons.share_solid, text: '1.3M',) ,
              ],
            )

        ),
        BottomTextWidget(name: 'Afidhu', text: 'Afidhu is full stack dev of mobile as well as web',detail: "@afidhu euro, #devstack",)


      ],
    );
  }
}

