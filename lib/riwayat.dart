import 'package:awal/addpesanan.dart';
import 'package:awal/editsewa.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class RiwayatPage extends StatefulWidget {
  @override
  _RiwayatPageState createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('sewa').where('status', isEqualTo: 'Penyewaan Selesai').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text('Penyewaan', style: TextStyle(color: Colors.black),),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Colors.blueAccent,Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        ),
      body: StreamBuilder(
        stream: _usersStream,
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (_, index) {
                return 
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //         builder: (_) =>
                //             EditSewa(docid: snapshot.data!.docs[index]),
                //       ),
                //     );
                //   },
                  Column(
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child:                 Container(  
                margin: EdgeInsets.all(8),                     
                alignment: Alignment.topLeft,
                padding : EdgeInsets.only(left: 10,right:10),
                height: 150,
                width: 450,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  color: Colors.white, 
                  boxShadow: [BoxShadow(
                    color: Color.fromARGB(255, 223, 223, 223),
                    blurRadius: 5,)]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child:Text(snapshot.data!.docChanges[index].doc['status']), 
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Color.fromARGB(209, 107, 96, 96),
                          blurRadius: 3,)]
                      ),
                      child: Image.network(snapshot.data!.docChanges[index].doc['Image']),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(snapshot.data!.docChanges[index].doc['mobil'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
                              SizedBox(width: 10,),
                              Text(snapshot.data!.docChanges[index].doc['warna'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(snapshot.data!.docChanges[index].doc['nopol'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),),
                          SizedBox(height: 10,),
                          Text(snapshot.data!.docChanges[index].doc['atasnama'], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),),
                        ]
                      ),
                    ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(snapshot.data!.docChanges[index].doc['tanggal'], style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17)),
                        
                        Text('-', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                        
                        Text(snapshot.data!.docChanges[index].doc['tanggal kembali'], style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17)),
                        
                      ],
                    
                    )                    
                  ],
                
                ),
              )
                      ),
                    ],
                  );
                // );
              },
            ),
          );
        },
      ),
    );
  }
}
// import 'package:awal/konfirmasi.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const RiwayatPage());
// }

// class RiwayatPage extends StatefulWidget {
//   const RiwayatPage({Key? key}) : super(key: key);
//   @override
//   _RiwayatPageState createState() => _RiwayatPageState();
// }

// class _RiwayatPageState extends State<RiwayatPage> {
  
//   @override
//   Widget build(BuildContext context) {
//     var white;
//     return MaterialApp(
//       title: 'profile',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Riwayat")
//         ),
//         body: SafeArea(
//           child: Column(
//               children: [
//                 Container(
//                   color: Color.fromARGB(255, 245, 245, 245),
//                   height: 661,
//                   child: ListView(
//                     children: [
//               Container(
//                   height: 235,
//                   width: 500,
//                   decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 245, 245, 245)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(     
//                           mainAxisAlignment: MainAxisAlignment.center,               
//                           children: [
//                             Container(
//                             decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: const [BoxShadow(
//                                 color: Color.fromARGB(255, 165, 165, 165),
//                                 blurRadius: 5,
//                               ),
//                             ],
//                             color: Color.fromARGB(255, 204, 232, 255),
//                             ),
//                             height: 215,
//                             width: 376,
//                             child: SizedBox(
//                               child: Column(
//                                 children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                         height: 125,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(20.0),
//                                           child: Container(
//                                             alignment: Alignment.center,
//                                             width: 130,
//                                             height: 100,
//                                             child: Image.asset('assets/1.jpg'),
//                                           ),
//                                         )
//                                       ),
//                                       Column(
//                                         children: [
//                                           Container(
//                                               child: Text("Daihatsu Terios",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
//                                               ),
//                                           Container(
//                                               child: Text("Rp. 200.000 / hari",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
//                                               ),
//                                           Container(
//                                               child: Text('Sewa = 2 Hari',
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
//                                               ),
//                                         ],
//                                       ),
//                                   ],
//                                 ),
//                                   Container(
//                                     alignment: Alignment.center,
//                                     color: Color.fromARGB(255, 128, 178, 219),
//                                     width: 400,
//                                     height: 40,
//                                     child: Text("Total Sewa :", style: TextStyle(
//                                       fontSize: 30,
//                                     ),)
//                                   ),
//                                                       ElevatedButton(
//                       onPressed: () {
//                         // Navigator.of(context).push(MaterialPageRoute(
//                         //   builder: (context) => PembayaranPage(),
//                         //   ));
//                       }, 
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 0, 5, 29),
//                         onPrimary: Colors.black,
//                         shadowColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
                          
//                         )
//                       ),
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 15,
//                         width: 75,
//                         child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
//                       )),
//                   ),
//                                 ],
//                               ),
//                             ),
//                             ),
//                           ]),
//             )
//           ],
//         ),
//       ),
//               Container(
//                   height: 235,
//                   width: 500,
//                   decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 245, 245, 245)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(     
//                           mainAxisAlignment: MainAxisAlignment.center,               
//                           children: [
//                             Container(
//                             decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: const [BoxShadow(
//                                 color: Color.fromARGB(255, 165, 165, 165),
//                                 blurRadius: 5,
//                               ),
//                             ],
//                             color: Color.fromARGB(255, 204, 232, 255),
//                             ),
//                             height: 215,
//                             width: 376,
//                             child: SizedBox(
//                               child: Column(
//                                 children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                         height: 125,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(20.0),
//                                           child: Container(
//                                             alignment: Alignment.center,
//                                             width: 130,
//                                             height: 100,
//                                             child: Image.asset('assets/1.jpg'),
//                                           ),
//                                         )
//                                       ),
//                                       Column(
//                                         children: [
//                                           Container(
//                                               child: Text("Daihatsu Terios",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
//                                               ),
//                                           Container(
//                                               child: Text("Rp. 200.000 / hari",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
//                                               ),
//                                           Container(
//                                               child: Text('Sewa = 2 Hari',
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
//                                               ),
//                                         ],
//                                       ),
//                                   ],
//                                 ),
//                                   Container(
//                                     alignment: Alignment.center,
//                                     color: Color.fromARGB(255, 128, 178, 219),
//                                     width: 400,
//                                     height: 40,
//                                     child: Text("Total Sewa :", style: TextStyle(
//                                       fontSize: 30,
//                                     ),)
//                                   ),
//                                                       ElevatedButton(
//                       onPressed: () {
//                         // Navigator.of(context).push(MaterialPageRoute(
//                         //   builder: (context) => PembayaranPage(),
//                         //   ));
//                       }, 
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 0, 5, 29),
//                         onPrimary: Colors.black,
//                         shadowColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
                          
//                         )
//                       ),
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 15,
//                         width: 75,
//                         child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
//                       )),
//                   ),
//                                 ],
//                               ),
//                             ),
//                             ),
//                           ]),
//             )
//           ],
//         ),
//       ),
//               Container(
//                   height: 235,
//                   width: 500,
//                   decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 245, 245, 245)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(     
//                           mainAxisAlignment: MainAxisAlignment.center,               
//                           children: [
//                             Container(
//                             decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: const [BoxShadow(
//                                 color: Color.fromARGB(255, 165, 165, 165),
//                                 blurRadius: 5,
//                               ),
//                             ],
//                             color: Color.fromARGB(255, 204, 232, 255),
//                             ),
//                             height: 215,
//                             width: 376,
//                             child: SizedBox(
//                               child: Column(
//                                 children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                         height: 125,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(20.0),
//                                           child: Container(
//                                             alignment: Alignment.center,
//                                             width: 130,
//                                             height: 100,
//                                             child: Image.asset('assets/1.jpg'),
//                                           ),
//                                         )
//                                       ),
//                                       Column(
//                                         children: [
//                                           Container(
//                                               child: Text("Daihatsu Terios",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
//                                               ),
//                                           Container(
//                                               child: Text("Rp. 200.000 / hari",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
//                                               ),
//                                           Container(
//                                               child: Text('Sewa = 2 Hari',
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
//                                               ),
//                                         ],
//                                       ),
//                                   ],
//                                 ),
//                                   Container(
//                                     alignment: Alignment.center,
//                                     color: Color.fromARGB(255, 128, 178, 219),
//                                     width: 400,
//                                     height: 40,
//                                     child: Text("Total Sewa :", style: TextStyle(
//                                       fontSize: 30,
//                                     ),)
//                                   ),
//                                                       ElevatedButton(
//                       onPressed: () {
//                         // Navigator.of(context).push(MaterialPageRoute(
//                         //   builder: (context) => PembayaranPage(),
//                         //   ));
//                       }, 
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 0, 5, 29),
//                         onPrimary: Colors.black,
//                         shadowColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
                          
//                         )
//                       ),
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 15,
//                         width: 75,
//                         child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
//                       )),
//                   ),
//                                 ],
//                               ),
//                             ),
//                             ),
//                           ]),
//             )
//           ],
//         ),
//       ),
//               Container(
//                   height: 235,
//                   width: 500,
//                   decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 245, 245, 245)),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(     
//                           mainAxisAlignment: MainAxisAlignment.center,               
//                           children: [
//                             Container(
//                             decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: const [BoxShadow(
//                                 color: Color.fromARGB(255, 165, 165, 165),
//                                 blurRadius: 5,
//                               ),
//                             ],
//                             color: Color.fromARGB(255, 204, 232, 255),
//                             ),
//                             height: 215,
//                             width: 376,
//                             child: SizedBox(
//                               child: Column(
//                                 children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                         height: 125,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(20.0),
//                                           child: Container(
//                                             alignment: Alignment.center,
//                                             width: 130,
//                                             height: 100,
//                                             child: Image.asset('assets/1.jpg'),
//                                           ),
//                                         )
//                                       ),
//                                       Column(
//                                         children: [
//                                           Container(
//                                               child: Text("Daihatsu Terios",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
//                                               ),
//                                           Container(
//                                               child: Text("Rp. 200.000 / hari",
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
//                                               ),
//                                           Container(
//                                               child: Text('Sewa = 2 Hari',
//                                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
//                                               ),
//                                         ],
//                                       ),
//                                   ],
//                                 ),
//                                   Container(
//                                     alignment: Alignment.center,
//                                     color: Color.fromARGB(255, 128, 178, 219),
//                                     width: 400,
//                                     height: 40,
//                                     child: Text("Total Sewa :", style: TextStyle(
//                                       fontSize: 30,
//                                     ),)
//                                   ),
//                                                       ElevatedButton(
//                       onPressed: () {
//                         // Navigator.of(context).push(MaterialPageRoute(
//                         //   builder: (context) => PembayaranPage(),
//                         //   ));
//                       }, 
//                       style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 0, 5, 29),
//                         onPrimary: Colors.black,
//                         shadowColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
                          
//                         )
//                       ),
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: 15,
//                         width: 75,
//                         child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
//                       )),
//                   ),
//                                 ],
//                               ),
//                             ),
//                             ),
//                           ]),
//             )
//           ],
//         ),
//       ),
//                     ],
//                   ),
//                 )
//               ]),
//         ),
//       ),
//     );
//   }
// }

