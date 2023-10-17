import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  late ChewieController chewieController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/rick.mp4');
    _controller.initialize();

    chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9,
      showOptions: false,
      autoPlay: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
      ),
    );
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: AspectRatio(
      aspectRatio: 16 / 9,
      child: Chewie(controller: chewieController),
    ));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    chewieController.dispose();
  }
}
