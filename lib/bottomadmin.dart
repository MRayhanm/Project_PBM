import 'package:awal/Pesananadmin.dart';
import 'package:awal/categoryadmin.dart';
import 'package:awal/profileadmin.dart';
import 'package:awal/riwayat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BottomAdminPage());
}
int _selectedIndex = 0;
class BottomAdminPage extends StatefulWidget {
  const BottomAdminPage({Key? key}) : super(key: key);
  @override
  _BottomAdminPageState createState() => _BottomAdminPageState();
}

class _BottomAdminPageState extends State<BottomAdminPage> {
  int currentIndex = 0;

  
  final screens = [
    ProfileadminPage(),
    PesananPage(),
    CategoryAdmin(),
    RiwayatPage(),

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
            icon: Icon(Icons.account_circle),
            label: 'Profil',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_rounded),
            label: 'Penyewaan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp),
            label: 'Tambah Mobil',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riawayat',
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
