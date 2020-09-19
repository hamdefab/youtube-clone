import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/video_card.dart';

class Subscription extends StatefulWidget {
  final YoutubeModel detail;

  const Subscription({Key key, this.detail}) : super(key: key);

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          height: 40,
          child: Container(
            height: 40,
            child: ListView(
              padding: EdgeInsets.only(left: 5),
              scrollDirection: Axis.horizontal,
              children: _getTags(),
              shrinkWrap: false,
            ),
          ),
        ),
        VideoList(
          listData: youtubeSubscription,
        ),
      ],
    );
  }

  List<Widget> _getTags() {
    List<Widget> tags = [];
    for (int i = 0; i < 7; i++) {
      tags.add(
        Container(
          margin: EdgeInsets.only(left: 5),
          child: new Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                    backgroundImage: NetworkImage(widget.detail.channelAvatar)),
                Text(widget.detail.channelTitle)
              ],
            ),
          ),
        ),
      );
    }
    return tags;
  }
}
