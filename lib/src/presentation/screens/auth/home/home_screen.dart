import 'package:findvity_app/src/presentation/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/styles.dart';
import 'explore.dart';
import 'feed.dart';
import 'groups.dart';

class Homescreen extends StatefulWidget {
  static const routename = "/home";
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 1;
  final _pageList = [
    Explore(),
    Feed(),
    Groups(),
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: accentColor,
      systemNavigationBarDividerColor: accentColor,
    ));
  }

  _onPageSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FINDVITY',
          style: titleText,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: primaryColor,
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _onPageSelected,
        unselectedItemColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
