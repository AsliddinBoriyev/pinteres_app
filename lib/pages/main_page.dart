import 'package:flutter/material.dart';
import 'package:pinteres_app2/pages/profile_page.dart';
import 'package:pinteres_app2/pages/search_page.dart';

import 'feed_page.dart';
import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  final List<Widget> _bottomList = [
    const HomePage(),
    const SearchPage(),
    const FeedPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          _bottomList.elementAt(_pageIndex),
          Padding(
            padding:  EdgeInsets.all(30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius:  BorderRadius.all(Radius.circular(30.0)),
                child: BottomNavigationBar(
                  elevation: 0,

                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: _pageIndex,
                  onTap: (int index){
                    setState((){
                      _pageIndex = index;
                    });
                  },
                  items:  const [
                    BottomNavigationBarItem(icon: Icon(Icons.home ), label: "home"),
                    BottomNavigationBarItem(icon: Icon(Icons.search ), label: "Search"),
                    BottomNavigationBarItem(icon: Icon(Icons.chat ), label: "Search"),
                    BottomNavigationBarItem(icon: Icon(Icons.person ), label: "person"),
                  ],
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}