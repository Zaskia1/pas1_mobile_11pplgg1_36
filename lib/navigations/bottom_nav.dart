import 'package:pas1_mobile_11pplgg1_36/views/PostView.dart';
import 'package:pas1_mobile_11pplgg1_36/views/FavoritPage.dart';
import 'package:pas1_mobile_11pplgg1_36/views/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  final List<Widget> menus = [PostView(), ChatPage(), HomePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menus[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),

        ],
      ),
    );
  }
}
