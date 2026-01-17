import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_everythings/ui_design/youtube_ui/screen/video_card.dart';

import '../model/data.dart';
import 'custom_up_icon.dart';

class YoutubeHome extends StatefulWidget {
  const YoutubeHome({super.key});

  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CupertinoNavigationBar(),

      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomUpIcon(),

          SliverList(delegate: SliverChildBuilderDelegate((context, index){
            var video = videosList[index];
            return VideoCard(videos:video);
          },
            childCount: videosList.length
          ),)
        ],
      ),
    );
  }
}
