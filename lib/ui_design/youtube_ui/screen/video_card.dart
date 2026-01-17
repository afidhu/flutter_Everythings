import 'package:flutter/material.dart';
import 'package:flutter_miniplayer/flutter_miniplayer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoCard extends StatelessWidget {
  final videos;
  const VideoCard({super.key, this.videos});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){

                 Get.bottomSheet(Stack(
                   fit: StackFit.loose,
                   children: [
                       Miniplayer(
                         minHeight: 60.h,
                         maxHeight: 800.h,
                         tapToCollapse: true,
                         builder: (height, percentage) {
                           return Image.network(videos.thumbnail, height:50.h ,width: 100,fit: BoxFit.contain,);

                         },
                       ),
                     IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.close, color: Colors.red,size: 20.sp,fontWeight: FontWeight.bold,))
                   ],

                 ));
            },
            child: Stack(
              children: [
                Image.network(videos.thumbnail, height:100.h ,width: double.infinity,fit: BoxFit.cover,),
                Positioned(
                   bottom: 8,
                 right: 8,
                    child:   Text(videos.duration, style: TextStyle(color: Colors.white,backgroundColor: Colors.black),),)
              ],
            ),
          ),

          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(videos.author.profile_url),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: Text(videos.title, maxLines: 2,overflow: TextOverflow.ellipsis,)),
                    Flexible(child: Text('${videos.author.name} + ${videos.views_count} Views + ${timeago.format(videos.timeStamp)}')),
                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            ],
          ),
        ],
      ),
    );
  }
}
