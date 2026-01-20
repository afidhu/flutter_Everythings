import 'package:flutter/material.dart';


class PostCommentLikes extends StatelessWidget {
  final posts;
  const PostCommentLikes({super.key, this.posts});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.thumb_up, color: Colors.blue,)),
        Expanded(child:  Text(posts.likes.toString()),),
        Text(posts.comments.toString()),
        Text(' Comments '),
        Text(posts.shared.toString()),
        Text(' shared'),
      ],
    );
  }
}
