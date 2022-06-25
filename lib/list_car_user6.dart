// import 'package:awal/addpesanan.dart';
// import 'package:awal/editmobil4.dart';
// import 'package:awal/editmobil6.dart';
// import 'package:awal/editsewa.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';


// class ListCar6 extends StatefulWidget {
//   @override
//   _ListCar6State createState() => _ListCar6State();
// }

// class _ListCar6State extends State<ListCar6> {
//   final Stream<QuerySnapshot> _carsStream =
//       FirebaseFirestore.instance.collection('cars2').snapshots();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mobil 6 Kursi'),
//       ),
//       body: StreamBuilder(
//         stream: _carsStream,
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.hasError) {
//             return Text("something is wrong");
//           }
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           return Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: ListView.builder(
//               itemCount: snapshot.data!.docs.length,
//               itemBuilder: (_, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) =>
//                             EditMobil6(docid: snapshot.data!.docs[index]),
//                       ),
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 4,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                           left: 3,
//                           right: 3,
//                         ),
//                         child:                 Container(  
//                 margin: EdgeInsets.all(8),                     
//                 alignment: Alignment.topLeft,
//                 padding : EdgeInsets.only(left: 10,right:10),
//                 height: 150,
//                 width: 450,
//                 decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                   color: Colors.white, 
//                   boxShadow: [BoxShadow(
//                     color: Color.fromARGB(255, 223, 223, 223),
//                     blurRadius: 5,)]),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                       height: 80,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                         boxShadow: [BoxShadow(
//                           color: Color.fromARGB(209, 107, 96, 96),
//                           blurRadius: 3,)]
//                       ),
//                       child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 75,width: 75,),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(left: 10),
//                       margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                       child: Column(
//                         children: [
//                           Text(snapshot.data!.docChanges[index].doc['merk'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
//                           SizedBox(height: 10,),
//                           Text(snapshot.data!.docChanges[index].doc['tahun'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),),
//                           SizedBox(height: 10,),
//                           Text(snapshot.data!.docChanges[index].doc['nopol'], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),),
//                         ]
//                       ),
//                     ),
//                         ],
//                       ),
                      
//                     ),        
//                     Container(
//                       alignment: Alignment.center,
//                       height: 30,
//                       width: 200,
//                       decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                      color: Colors.white, 
//                      boxShadow: [BoxShadow(
//                     color: Color.fromARGB(255, 223, 223, 223),
//                     blurRadius: 5,)]),
//                       child: Text(snapshot.data!.docChanges[index].doc['status'], style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
//                     )          
//                   ],
                
//                 ),
//               )
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:awal/bottom.dart';
import 'package:awal/cameraprev.dart';
import 'package:awal/cameraprev2.dart';
import 'package:awal/car_description.dart';
import 'package:awal/car_description6.dart';
import 'package:awal/category_user.dart';
import 'package:awal/editmobil6.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class Carlist6Page extends StatefulWidget {

  @override
  State<Carlist6Page> createState() => _Carlist6PageState();
}

class _Carlist6PageState extends State<Carlist6Page> {
    final Stream<QuerySnapshot> _cars2Stream =
      FirebaseFirestore.instance.collection('cars2').snapshots();
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
        stream: _cars2Stream,
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
                            CarDescription6(docid: snapshot.data!.docs[index]),
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