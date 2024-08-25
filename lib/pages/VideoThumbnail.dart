import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/VideoPlayerScreen.dart';


class VideoThumbnail extends StatelessWidget {
  final String thumbnailPath;
  final String videoPath;
  final String title;
  final String subtitle;

  const VideoThumbnail({
    super.key,
    required this.thumbnailPath,
    required this.videoPath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(videoPath: videoPath),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(thumbnailPath,height:100,width: 320),
          ],
        ),
      ),
    );
  }
}


