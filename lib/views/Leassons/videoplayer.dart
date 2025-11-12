import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_everythings/views/Leassons/videoplayer_2.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();

    // Initialize the video player controller
    _videoController =
        VideoPlayerController.networkUrl(
            Uri.parse(
              'https://rr2---sn-5pguxau1-q5gl.googlevideo.com/videoplayback?expire=1762966102&ei=9mUUafNZvb6S5w_O5Y_RDg&ip=136.0.189.108&id=o-ADT-dFA5zg4xG64OTEZV2SmF7YCfqOoPavcXUyRw5RCI&itag=18&source=youtube&requiressl=yes&xpc=EgVo2aDSNQ%3D%3D&rms=au%2Cau&bui=AdEuB5QpQqXV6-KQ25aMIDuqYE1OZugn6BJSEw7n0UpxTQkn5wCHLIrPnTggDLMEja341lEogls3M0RS&spc=6b0G_KowLz0Fh7sy47ZSCYgb4qpsU_QHi-wquUkBaymojQ7TRjsDoXeWWZjSFeXTeq0&vprv=1&svpuc=1&mime=video%2Fmp4&rqh=1&cnr=14&ratebypass=yes&dur=2469.209&lmt=1745323517802173&fexp=51552689,51565115,51565681,51580968&c=ANDROID&txp=6208224&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cxpc%2Cbui%2Cspc%2Cvprv%2Csvpuc%2Cmime%2Crqh%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AJfQdSswRQIgQwUna1U4hiQBo1nnoDgqAGUudEVUhUA8WigbqFS5t14CIQC2sQsLF8fBkzmbkhq3vC_7K-H-P41Y66DXpX5qJgNBDQ%3D%3D&redirect_counter=1&rm=sn-ab5elk7l&rrc=104&req_id=3f51d5a8838aa3ee&cms_redirect=yes&cps=0&ipbypass=yes&met=1762944508,&mh=71&mip=197.186.17.81&mm=31&mn=sn-5pguxau1-q5gl&ms=au&mt=1762944090&mv=m&mvi=2&pl=24&lsparams=cps,ipbypass,met,mh,mip,mm,mn,ms,mv,mvi,pl,rms&lsig=APaTxxMwRAIgJN_njoCEIikYc9-YAOtabz3eRDQeBhzentf6EsQ5g08CIH-OjmrjYT_-R0LvW_qYTfOmqJVEBhXWtv415YsG24f2',
            ),
          )
          ..initialize().then((_) {
            // Once initialized, create Chewie controller
            _chewieController = ChewieController(
              videoPlayerController: _videoController,
              autoPlay: false, // set true if you want auto-play
              looping: false, // set true if you want loop
            );
            setState(() {}); // Refresh UI
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chewie Video Player")),
      body: Center(
        child: Column(
          children: [
            _chewieController != null && _videoController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Chewie(controller: _chewieController!),
                  )
                : const CircularProgressIndicator(),
          ],
        ), // Show loading until ready
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(VideoPlayer2());
        },
        child: Text('Go Video 2'),
      ),
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }
}
