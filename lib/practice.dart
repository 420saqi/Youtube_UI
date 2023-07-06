import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayingVideos extends StatefulWidget {
  const PlayingVideos({super.key});

  @override
  State<PlayingVideos> createState() => _PlayingVideosState();
}

class _PlayingVideosState extends State<PlayingVideos> {
@override
  void initState() {
    super.initState();
    // TODO: implement initState
controller  = YoutubePlayerController(
  // initialVideoId: videoId ?? '',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
controlsVisibleAtStart: true,

    ), initialVideoId: 'qtDimeuO4rs'
);
}
late YoutubePlayerController controller;


  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) =>  Scaffold(
          backgroundColor: Colors.grey,
          body: player,
        ),
    );
  }
}






