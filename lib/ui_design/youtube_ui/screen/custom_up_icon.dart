import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/data.dart';

class CustomUpIcon extends StatelessWidget {
  const CustomUpIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('images/yt.jpg'),
      ) ,
      actions: [
        CupertinoButton(child: Icon(Icons.cast), onPressed: (){}),
        CupertinoButton(child: Icon(Icons.notifications), onPressed: (){}),
        CupertinoButton(child: Icon(Icons.search), onPressed: (){}),
        CupertinoButton(child:Image.network(current_user.profile_url,width: 30,height: 30,), onPressed: (){}),
      ],
    );
  }
}
