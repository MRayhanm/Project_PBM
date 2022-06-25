
import 'package:awal/bottom.dart';
import 'package:awal/cameraprev.dart';
import 'package:awal/cameraprev2.dart';
import 'package:awal/car_description.dart';
import 'package:awal/category_user.dart';
import 'package:awal/editmobil6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class Carlist4Page extends StatefulWidget {

  @override
  State<Carlist4Page> createState() => _Carlist4PageState();
}

class _Carlist4PageState extends State<Carlist4Page> {
    final Stream<QuerySnapshot> _carsStream =
      FirebaseFirestore.instance.collection('cars').snapshots();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SafeArea(
          child: Column(
              children: [
                Container(
                  height: 277,
                  width: 400,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BottomPage(),
              ));
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)),
                    image: DecorationImage(
                      image: AssetImage('assets/2.jpg'),
                      fit: BoxFit.fill)
                  ),
                  
                  alignment: Alignment.bottomCenter,
                ),
                Container(
                  color: Color.fromARGB(255, 245, 245, 245),
                  height: 100,
                  alignment: Alignment.centerLeft,
                  child: Text("Mobil",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                ),
                StreamBuilder(
        stream: _carsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("something is wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CarDescription4(docid: snapshot.data!.docs[index]),
                      ),
                    );
                  },
                  child:
                                           Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Color.fromARGB(255, 83, 83, 83),
                                blurRadius: 3,
                              )]
                            ),
                            child: ListTile(
                            leading: Image.network(snapshot.data!.docChanges[index].doc['Image']), 
                            title: Text(snapshot.data!.docChanges[index].doc['merk'], style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                            subtitle: Text(snapshot.data!.docChanges[index].doc['tahun'], style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
                          ),
                      ),
                        )
                );
              },
            ),
          );
        },
      ),
              ]),
        ),
        
        
      //   bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.history),
      //       label: 'Riawayat',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.map_outlined),
      //       label: 'Maps',
      //     ),
      //      BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: 0,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
      //   showUnselectedLabels: true,
      //  ),
      ),
    );
  }
}
// import 'package:awal/cameraprev.dart';
// import 'package:awal/cameraprev2.dart';
// import 'package:awal/car_description.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Carlist2Page());
// }

// class Carlist2Page extends StatelessWidget {
//   const Carlist2Page({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//               children: [
//                 Container(
//                   height: 277,
//                   width: 400,
//                   child: Container(
//                     alignment: Alignment.topLeft,
//                     child: IconButton(
//                       onPressed: (){
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,)),
//                   ),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(15.0),
//                       bottomRight: Radius.circular(15.0)),
//                     image: DecorationImage(
//                       image: AssetImage('assets/brio.jpg'),
//                       fit: BoxFit.fill)
//                   ),
                  
//                   alignment: Alignment.bottomCenter,
//                 ),
//                 Container(
//                   color: Color.fromARGB(255, 245, 245, 245),
//                   height: 90,
//                   alignment: Alignment.centerLeft,
//                   child: Text("Mobil",
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
//                 ),
//                 StreamBuilder<List<Cars2>>(
//                 stream: readCars2(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasError){
//                     return Text('Error ${snapshot.error}');
//                   }
//                   else if (snapshot.hasData){
//                     final Cars2 = snapshot.data!;
                  
//                   return Container(
                    
//                     height: 380,
//                     color: Color.fromARGB(255, 245, 245, 245),
//                     child:ListView(
//                       children: Cars2.map(buildCars2).toList(),
//                       ),
//                     );
//                   }else {
//                     return Center(child: CircularProgressIndicator());
//                   }
//                 }
//               ),
//               ]),
//         ),
        
        
//         bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history),
//             label: 'Riawayat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.map_outlined),
//             label: 'Maps',
//           ),
//            BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: 0,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
//         showUnselectedLabels: true,
//        ),
//       ),
//     );
//   }
//                     Widget buildCars2(Cars2 cars2) => 
//                         Padding(
//                           padding: const EdgeInsets.all(5.0),
//                           child: Container(
//                             alignment: Alignment.centerLeft,
//                             height: 110,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15),
//                               color: Colors.white,
//                               boxShadow: [BoxShadow(
//                                 color: Color.fromARGB(255, 83, 83, 83),
//                                 blurRadius: 3,
//                               )]
//                             ),
//                             child: ListTile(
//                             leading: Image.asset('assets/1.jpg'), 
//                             title: Text(cars2.merk, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
//                             subtitle: Text(cars2.tahun.toString()),
//                           ),
//                       ),
//                         );


//   Stream<List<Cars2>> readCars2() => FirebaseFirestore.instance
//   .collection('cars2')
//   .snapshots()
//   .map((snapshot) =>
//       snapshot.docs.map((doc) => Cars2.fromJson(doc.data())).toList());

// }