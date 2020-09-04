import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';

class VideoDetail extends StatefulWidget {
  final YoutubeModel detail;

  const VideoDetail({Key key, @required this.detail}) : super(key: key);

  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildVideoPlayer(),
          ListView(
            children: <Widget>[],
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.detail.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
