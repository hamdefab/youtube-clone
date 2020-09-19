import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_clone/models/colors.dart';

class SuggestionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }

  List<Widget> _getTags() {
    List<Widget> tags = [];
    for (int i = 0; i < 7; i++) {
      tags.add(Container(
        margin: EdgeInsets.only(left: 5),
        child: new FlatButton(
          child: Text(
            tagList[i],
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: tabBarUnselectedIconsColor, width: 0.5)),
          onPressed: () {},
        ),
      ));
    }
    return tags;
  }

  final List<String> tagList = [
    "All",
    "Anime",
    "Overwatch",
    "Cybersecurity",
    "Interviews",
    "Programming",
    "Python"
  ];
}
