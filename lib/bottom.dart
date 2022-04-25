
import 'package:awal/car_description.dart';
import 'package:awal/category_user.dart';
import 'package:awal/home.dart';
import 'package:awal/list_car_user.dart';
import 'package:awal/profil.dart';
import 'package:awal/riwayat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BottomPage());
}
int _selectedIndex = 0;
class BottomPage extends StatefulWidget {
  const BottomPage({Key? key}) : super(key: key);
  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int currentIndex = 0;
  String nama = 'Mohammad Rayhan';
  String alamatrumah = 'Jember';
  String nomor= '085438659327';

  
  final screens = [
    const HomePage(),
    const RiwayatPage(),
    const CategoryPage(),
    ProfilPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riawayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Maps',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
        showUnselectedLabels: true,
       ),
      ),
    );
  }
}
