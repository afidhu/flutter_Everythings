
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/story_model.dart';
import '../data/models/user_model.dart';

class Stories extends StatelessWidget {
  final UserFb myCurrentUser;
  final List<StoryFb> stories;
  const Stories({super.key, required this.myCurrentUser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100.h,
      width: 100.w,
      child: ListView.builder(
        itemCount: 1+stories.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
          if(index == 0){
            return MyStory(myCurrentUser: myCurrentUser,);
          }
          var data  = stories[index-1];
            return MyListStories(stories: data,);
          }
      ),
    );
  }
}

class MyStory extends StatelessWidget {
  final myCurrentUser;
  const MyStory({super.key, this.myCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(2.w),

          margin: EdgeInsets.all(2.w),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.network(myCurrentUser.imageUrl,height: 100.h,width: 100.w,fit: BoxFit.cover,),
          ),
        ),

        Positioned(
          top: 5.h,
           left: 5.w,
           child: OutlinedButton.icon(
             style: ButtonStyle(
               shadowColor: WidgetStatePropertyAll(Colors.white),
               backgroundColor: WidgetStatePropertyAll(Colors.white),
             ),
             onPressed: (){}, label: SizedBox(), icon: Icon(Icons.add),
           ),
        )
      ],
    );
  }
}


class MyListStories extends StatelessWidget {
  final stories;
  const MyListStories({super.key, this.stories});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          margin: EdgeInsets.all(2.w),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.network(stories.imageUrl,height: 100.h,width: 100.w,fit: BoxFit.cover,),
          ),
        ),
        Positioned(
          top: 5.h,
        left: 5.w,
        child:
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 20,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 18,
                foregroundColor: Colors.purpleAccent,
                backgroundImage: NetworkImage(stories.user.imageUrl),),
            ),
            ),
        Positioned(
          top: 73.h,
          left: 22.w,
          child: Container(color: Colors.black26,  child: Text(stories.user.name, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        )
      ],
    );
  }
}
