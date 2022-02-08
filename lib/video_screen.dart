import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_downloader/mainpage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: convertedUrl(context.read(selectedVideoProvider).state!.id),
      flags: const YoutubePlayerFlags(autoPlay: true, )
    );
    super.initState();
  }
  @override
  void dispose() {
    _controller.pause();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Consumer(
        builder: (context, watch, _) {
           return Container(
             color: Colors.black,
             child: Center(
               child: YoutubePlayerBuilder(player: YoutubePlayer(controller: _controller,)
                 ,builder: (context, player) {
                 return YoutubePlayer(controller: _controller);
                 },
               ),
             ),
           );
        },
      ),
    );
  }
  //functions
    String convertedUrl(url){
    return YoutubePlayer.convertUrlToId(url).toString();
    }
}
