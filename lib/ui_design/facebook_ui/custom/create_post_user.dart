
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePostUser extends StatelessWidget {
  
  final currentUser;
  const CreatePostUser({super.key, this.currentUser});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.fromLTRB(11, 2, 2, 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(currentUser.imageUrl),
                ),

                const SizedBox(width: 10,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(hintText: 'What \'s on your mind'),
                  ),
                )
              ],
            ),

            Container(
              height: 20.h,
              color: Colors.white,
                child: Card(
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                   TextButton.icon(onPressed: ()=>print("live"), label:Text('live'), icon: Icon(Icons.videocam, color: Colors.red,),),
                  VerticalDivider(width: 10,),
                   TextButton.icon(onPressed: ()=>print("live"), label:Text('Photo'), icon: Icon(Icons.photo_library, color: Colors.green,),),
                  VerticalDivider(width: 10,),
                   TextButton.icon(onPressed: ()=>print("room"), label:Text('Room'), icon: Icon(Icons.video_call, color: Colors.purpleAccent,),),
                  VerticalDivider(width: 10,),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
