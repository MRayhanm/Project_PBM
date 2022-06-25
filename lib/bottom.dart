import 'package:awal/category_user.dart';
import 'package:awal/home.dart';
import 'package:awal/lokasirental.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomPageState();
  }
}

class _BottomPageState extends State<BottomPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    CategoryPage(),
    MapSample(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Kategori Mobil'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Rental Location',
          ),
          
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}