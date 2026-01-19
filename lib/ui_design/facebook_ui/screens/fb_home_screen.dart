import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/config/pallete_color.dart';
import 'package:flutter_everythings/ui_design/facebook_ui/custom/create_post_user.dart';


import '../custom/online_rooms.dart';
import '../custom/upbar_icons.dart';
import '../data/datas.dart';
import '../data/models/user_model.dart';
class FbHomeScreen extends StatelessWidget {
  const FbHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
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
            padding: EdgeInsets.fromLTRB(0.0, 1, 12, 1),
            sliver: SliverToBoxAdapter(
              child: OnlineRooms(onlineUser: onlineUsers,),
            ),
          ),

          // SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          //   return Text('data');
          // },childCount: 10) )
        ]
      ),
    );
  }
}
