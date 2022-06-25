import 'package:awal/Pesananadmin.dart';
import 'package:awal/car_description.dart';
import 'package:awal/category_user.dart';
import 'package:awal/categoryadmin.dart';
import 'package:awal/home.dart';
import 'package:awal/profil.dart';
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

// import 'package:awal/Pesananadmin.dart';
// import 'package:awal/category_user.dart';
// import 'package:awal/categoryadmin.dart';
// import 'package:awal/home.dart';
// import 'package:awal/profil.dart';
// import 'package:awal/profileadmin.dart';
// import 'package:awal/riwayat.dart';
// import 'package:awal/status.dart';
// import 'package:flutter/material.dart';

// class BottomAdminPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _BottomAdminPageState();
//   }
// }

// class _BottomAdminPageState extends State<BottomAdminPage> {
//   int _currentIndex = 0;
//   final List<Widget> _children = [
//     ProfileadminPage(),
//     PesananPage(),
//     CategoryAdmin(),
//     RiwayatPage(),
    
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTabTapped,
//         currentIndex: _currentIndex,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profil'
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notes_outlined),
//             label: 'Penyewaan',
//           ),
        
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_circle_outline_rounded),
//             label: 'Tambah Mobil',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history),
//             label: 'Riwayat',
//           ),
          
//         ],
//       ),
//     );
//   }

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
// }