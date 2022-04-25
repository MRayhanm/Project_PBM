
import 'package:awal/Pengembalianadmin.dart';
import 'package:awal/Pesananadmin.dart';
import 'package:awal/Riwayatcustomeradmin.dart';
import 'package:awal/car_description.dart';
import 'package:awal/category_user.dart';
import 'package:awal/home.dart';
import 'package:awal/list_car_user.dart';
import 'package:awal/profil.dart';
import 'package:awal/profileadmin.dart';
import 'package:awal/riwayat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BottomadminPage());
}
int _selectedIndex = 0;
class BottomadminPage extends StatefulWidget {
  const BottomadminPage({Key? key}) : super(key: key);
  @override
  _BottomadminPageState createState() => _BottomadminPageState();
}

class _BottomadminPageState extends State<BottomadminPage> {
  int currentIndex = 0;

  
  final screens = [
    const PesananPage(),
    const RiwayatadminPage(),
    const PengembalianPage(),
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
