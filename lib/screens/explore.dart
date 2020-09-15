import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/video_card.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        VideoList(
          listData: youtubeModel,
        ),
      ],
    );
  }
}
