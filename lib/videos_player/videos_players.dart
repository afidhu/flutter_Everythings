

import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideosPlayers extends StatefulWidget {
  const VideosPlayers({super.key});

  @override
  State<VideosPlayers> createState() => _VideosPlayersState();
}

class _VideosPlayersState extends State<VideosPlayers>  {


   CustomVideoPlayerController? _customVideoPlayerController;
   VideoPlayerController? _VideoPlayerController;

   CustomVideoPlayerController? _customVideoPlayerControllerN;
   VideoPlayerController? _VideoPlayerControllerN;

   Uri  videoUrl = Uri.parse("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");



  Future <void> initializedAssetsVideoPlayer() async {
    _VideoPlayerController =VideoPlayerController.asset('videos/my_video.mp4');

    await _VideoPlayerController!.initialize();
    _customVideoPlayerController = CustomVideoPlayerController(context:context, videoPlayerController: _VideoPlayerController!);
    setState(() {
    });
  }

    Future <void> initializedNetworkVideoPlayer() async {
    Future.delayed(Duration(seconds: 1));
     _VideoPlayerControllerN = VideoPlayerController.networkUrl(videoUrl);

    await _VideoPlayerControllerN!.initialize();
    _customVideoPlayerControllerN = CustomVideoPlayerController(context:context, videoPlayerController: _VideoPlayerControllerN!);
    setState(() {
    });
  }


  @override
  void initState(){
    // TODO: implement initState
    super.initState();
      // initializedVideoPlayer();
}

   @override
   void dispose() {
     _customVideoPlayerController?.dispose();
     _VideoPlayerController?.dispose();
     _customVideoPlayerControllerN?.dispose();
     _VideoPlayerControllerN?.dispose();
     super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:Column(
        children: [
          _customVideoPlayerController == null ?const Center(child: CircularProgressIndicator()) : CustomVideoPlayer(customVideoPlayerController: _customVideoPlayerController!,),

          ElevatedButton(
              style:ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent)
              ) ,
              onPressed: (){
            initializedAssetsVideoPlayer();
          },
              child: Text('Asset from play', style: TextStyle(color: Colors.white, fontSize: 15.sp))
          ),
          ElevatedButton(
            style:ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlue)
            ) ,
              onPressed: (){
            initializedNetworkVideoPlayer();
          },
              child: Text('Network from Play', style: TextStyle(color: Colors.white, fontSize: 15.sp),)
          ),

          Stack(
            children: [
              ClipRRect(
                child: Expanded(

                  child:_customVideoPlayerControllerN == null ?const Center(child: CircularProgressIndicator()) : CustomVideoPlayer(customVideoPlayerController: _customVideoPlayerControllerN!,),
                ),
              )
            ],
          )
        ],
      )
    ));
  }
}
