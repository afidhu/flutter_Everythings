import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/config/pallete_color.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/custom/create_post_user.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/custom/responsive.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/screens/posts.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/screens/stories.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../custom/online_rooms.dart';
import '../custom/upbar_icons.dart';
import '../data/datas.dart';
import '../data/models/user_model.dart';
class FbHomeScreen extends StatelessWidget {
  const FbHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveUi(
          mobile: _HomeFbMobile(),
          tablet: _HomeFbTablet(),
          desktop: _HomeFbDesktop()
      ),
    );
  }
}

class _HomeFbMobile extends StatelessWidget {
  const _HomeFbMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return       CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[100],
            // shadowColor: Colors.white,
            // surfaceTintColor: Colors.white,
            flexibleSpace: Container(color: Colors.white,),
            floating: true,
            title: Text('Facebook',style: TextStyle(color: Palette.fbBlue, fontWeight: FontWeight.bold,letterSpacing: 1.1),),
            actions: [
              IconButton(onPressed: ()=>print('search'), icon: Icon(Icons.search),color:Colors.blue[900]),
              IconButton(onPressed: ()=>print('message'), icon: Icon(Icons.message_rounded),color:Colors.blue[900]),
            ],
          ),

          CreatePostUser(currentUser: currentUser,),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 1, 1, 1),
            sliver: SliverToBoxAdapter(
              child: OnlineRooms(onlineUser: onlineUsers,),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 0, 1, 1),
            sliver: SliverToBoxAdapter(
              child:Stories(myCurrentUser: currentUser,stories: stories,),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 0, 1, 1),
            sliver: SliverToBoxAdapter(
              child:Divider(color: Colors.grey[200],height: 10,thickness: 18,),
            ),
          ),


          SliverList(  delegate: SliverChildBuilderDelegate(  (context, index) {
            var data = posts_fb[index];
            return Posts(posts: data);
          },
              childCount: posts_fb.length
          )
          ),

        ]
    );
  }
}

class _HomeFbTablet extends StatelessWidget {
  const _HomeFbTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return       CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[100],
            // shadowColor: Colors.white,
            // surfaceTintColor: Colors.white,
            flexibleSpace: Container(color: Colors.white,),
            floating: true,
            title: Text('Facebook',style: TextStyle(color: Palette.fbBlue, fontWeight: FontWeight.bold,letterSpacing: 1.1),),
            actions: [
              IconButton(onPressed: ()=>print('search'), icon: Icon(Icons.search),color:Colors.blue[900]),
              IconButton(onPressed: ()=>print('message'), icon: Icon(Icons.message_rounded),color:Colors.blue[900]),
            ],
          ),

          CreatePostUser(currentUser: currentUser,),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 1, 1, 1),
            sliver: SliverToBoxAdapter(
              child: OnlineRooms(onlineUser: onlineUsers,),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 0, 1, 1),
            sliver: SliverToBoxAdapter(
              child:Stories(myCurrentUser: currentUser,stories: stories,),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 0, 1, 1),
            sliver: SliverToBoxAdapter(
              child:Divider(color: Colors.grey[200],height: 10,thickness: 18,),
            ),
          ),


          SliverList(  delegate: SliverChildBuilderDelegate(  (context, index) {
            var data = posts_fb[index];
            return Posts(posts: data);
          },
              childCount: posts_fb.length
          )
          ),

        ]
    );
  }
}


class _HomeFbDesktop extends StatelessWidget {
  const _HomeFbDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Container(
          color: Colors.yellow,
          width: 600,
        ),
        Flexible(
          flex: 2,
          child: Container(
            color: Colors.red,
          ),
        )
      ],
    );
  }
}