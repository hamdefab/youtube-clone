import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/video_card.dart';

class VideoDetail extends StatefulWidget {
  final YoutubeModel detail;

  const VideoDetail({Key key, @required this.detail}) : super(key: key);

  @override
  _VideoDetailState createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _layouts = [
      _videoInfo(),
      _channelInfo(),
      _moreInfo(),
      VideoList(
        listData: youtubeModel,
        isLandscape: true,
      ),
    ];

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      _layouts.clear();
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildVideoPlayer(context),
          Expanded(
            child: ListView(
              children: _layouts,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? 200.0
          : MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.detail.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _videoInfo() {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(widget.detail.title),
          subtitle: Text(widget.detail.viewCount),
          trailing: Icon(Icons.arrow_drop_down),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildButtonColumn(Icons.thumb_up, widget.detail.likeCount),
              _buildButtonColumn(Icons.thumb_down, widget.detail.dislikeCount),
              _buildButtonColumn(Icons.redo, "Share"),
              _buildButtonColumn(Icons.cloud_download, "Download"),
              _buildButtonColumn(Icons.library_add, "Save"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtonColumn(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(icon, color: Colors.grey[700]),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    );
  }

  Widget _channelInfo() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(widget.detail.channelAvatar),
              ),
              title: Text(
                widget.detail.channelTitle,
                //overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text("12M subscribers"),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "SUBSCRIBE",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _moreInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text("Up next"),
          ),
          Text("Autoplay"),
          Switch(onChanged: (c) {}, value: true)
        ],
      ),
    );
  }
}
