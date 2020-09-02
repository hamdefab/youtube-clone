import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';

import '../video_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoList(
      listData: youtubeModel,
    );
  }
}
