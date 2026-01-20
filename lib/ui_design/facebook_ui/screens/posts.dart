
import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/screens/post_comment_likes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/post_model.dart';
class Posts extends StatelessWidget {
  final posts;
  const Posts({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
    // FocusScope.of(context).unfocus();
      },

      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(posts.user.imageUrl),
                      ),
                      Column(
                        children: [
                          Text(posts.user.name),
                          Text(posts.timeAgo)
                        ],
                      )
                    ],
                  )

                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
            ],
          ),
          Text(posts.caption),
          SizedBox(
              width: double.infinity,
              height: 150.h,
              child: Image.network(posts.imageUrl, height: double.infinity,width: double.infinity,fit: BoxFit.cover,)
          ),

          PostCommentLikes(posts: posts,),

          // Divider(color: Colors.grey[200],height: 10,thickness: 18,)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(onPressed: (){}, label: Text('like'),icon: Icon(Icons.thumb_up,color: Colors.grey,),),
              TextButton.icon(onPressed: (){}, label: Text('comment'),icon: Icon(Icons.comment,color: Colors.grey,),),
              TextButton.icon(onPressed: (){}, label: Text('share'),icon: Icon(Icons.share,color: Colors.grey,),),
            ],
          ),

          Divider(color: Colors.grey[200],height: 10,thickness: 18,)
        ],
      ),
    );
  }
}
