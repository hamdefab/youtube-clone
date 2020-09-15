import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/explore.dart';
import 'package:youtube_clone/screens/home.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      Explore(),
      Center(child: Text('Subsctiption')),
      Center(child: Text('Notification')),
      Center(child: Text('Library')),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          'Images/youtube_logo.png',
          width: 90.0,
          height: 22.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          )
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            title: Text('Subsciption'),
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            title: Text('Notification'),
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            title: Text('Library'),
            icon: Icon(Icons.video_library),
          ),
        ],
      ),
    );
  }
}
