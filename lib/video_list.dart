import 'package:flutter/material.dart';
import 'package:youtube_clone/models/youtube_model.dart';
import 'package:youtube_clone/screens/video_page.dart';

class VideoList extends StatelessWidget {
  final List<YoutubeModel> listData;

  const VideoList({this.listData});
  //const VideoList({Key key, this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    return ListView.separated(
        itemBuilder: (context, index) {
          if (deviceOrientation == Orientation.portrait) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VideoDetail(
                      detail: listData[index],
                    ),
                  ),
                );
              },
              child: _buildPortraitList(context, index),
            );
          } else {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VideoDetail(
                      detail: listData[index],
                    ),
                  ),
                );
              },
              child: _buildLandscapeList(context, index),
            );
          }
        },
        separatorBuilder: (context, index) =>
            Divider(height: 1.0, color: Colors.grey),
        itemCount: listData.length);
  }

  Widget _buildPortraitList(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(listData[index].thumbnail),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          contentPadding:
              const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
          dense: true,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              listData[index].channelAvatar,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(listData[index].title),
          ),
          subtitle: Text(
              "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
          trailing: Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: Icon(Icons.more_vert),
          ),
        )
      ],
    );
  }

  Widget _buildLandscapeList(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 336.0 / 1.5,
            height: 188.0 / 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(listData[index].thumbnail),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  contentPadding:
                      const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                  // dense: true,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(listData[index].title),
                  ),
                  subtitle: Text(
                      "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
                  trailing: Container(
                    margin: const EdgeInsets.only(bottom: 30.0),
                    child: Icon(Icons.more_vert),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      listData[index].channelAvatar,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
