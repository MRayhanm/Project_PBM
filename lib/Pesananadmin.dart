import 'package:awal/addpesanan.dart';
import 'package:awal/bottomadmin.dart';
import 'package:awal/editsewa.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class PesananPage extends StatefulWidget {
  @override
  _PesananPageState createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('sewa').where('status', isEqualTo: 'Dalam Penyewaan').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => TambahPesanan()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text('Penyewaan', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BottomAdminPage(),
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            EditSewa(docid: snapshot.data!.docs[index]),
                      ),
                    );
                  },
                  child: Column(
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
                          Text(snapshot.data!.docChanges[index].doc['mobil'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
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
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
// ListTile(
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                             side: BorderSide(
//                               color: Colors.black,
//                             ),
//                           ),
//                           title: Text(
//                             snapshot.data!.docChanges[index].doc['title'],
//                             style: TextStyle(
//                               fontSize: 20,
//                             ),
//                           ),
//                           subtitle: Text(
//                             snapshot.data!.docChanges[index].doc['content'],
//                             style: TextStyle(
//                               fontSize: 15,
//                             ),
//                           ),
//                           contentPadding: EdgeInsets.symmetric(
//                             vertical: 12,
//                             horizontal: 16,
//                           ),
//                         ),
// import 'package:awal/konfirmasiadmin.dart';
// import 'package:awal/penyewaan.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';


// class PesananPage extends StatefulWidget {
//   const PesananPage({Key? key}) : super(key: key);

//   @override
//   State<PesananPage> createState() => _PesananPageState();
// }

// class _PesananPageState extends State<PesananPage> {
//   final db = Firestore.instance;
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     var white;
//     return MaterialApp(
//       title: 'Pesanan',
//       home: Scaffold(
//         appBar:AppBar(
//             title: Text('Data Pesanan'),
//             leading: IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,)),
//          ),
//         body: SafeArea(
//           child: Column(
//             children:<Widget>[
//                 StreamBuilder<List<Sewa>>(
//                 stream: readSewa(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasError){
//                     return Text('Error ${snapshot.error}');
//                   }
//                   else if (snapshot.hasData){
//                     final Sewa = snapshot.data!;
                  
//                   return Container(
                    
//                     height: 690,
//                     color: Color.fromARGB(255, 245, 245, 245),
//                     child:ListView(
//                       children: Sewa.map(buildSewa).toList(),
//                       ),
//                     );
//                   }else {
//                     return Center(child: CircularProgressIndicator());
//                   }
//                 }
//               ),
//               // Container(  
//               //   margin: EdgeInsets.all(20),                     
//               //   alignment: Alignment.topLeft,
//               //   padding : EdgeInsets.only(left: 10,right:10),
//               //   height: 250,
//               //   width: 430,
//               //   decoration: BoxDecoration(
//               //   borderRadius: BorderRadius.circular(15),
//               //     color: Colors.white, 
//               //     boxShadow: [BoxShadow(
//               //       color: Color.fromARGB(255, 223, 223, 223),
//               //       blurRadius: 5,)]),
//               //   child: Column(
//               //     mainAxisAlignment: MainAxisAlignment.start,
//               //     children: [
//               //       Container(
//               //         alignment: Alignment.topLeft,
//               //         child:Text('13 - 3 - 2022'), 
//               //       ),
//               //       SizedBox(height: 10,),
//               //       Container(
//               //         child: Row(
//               //           mainAxisAlignment: MainAxisAlignment.start,
//               //           children: [
//               //             Container(
//               //         height: 80,
//               //         width: 100,
//               //         decoration: BoxDecoration(
//               //           borderRadius: BorderRadius.circular(10),
//               //           color: Colors.white,
//               //           boxShadow: [BoxShadow(
//               //             color: Color.fromARGB(209, 107, 96, 96),
//               //             blurRadius: 3,)]
//               //         ),
//               //         child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 75,width: 75,),
//               //       ),
//               //       Container(
//               //         padding: EdgeInsets.only(left: 10),
//               //         margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//               //         child: Column(
//               //           children: [
//               //             Text("Toyota Avanza", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
//               //             SizedBox(height: 10,),
//               //             Text("Rp 200.000 /hari", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22,color: Color.fromARGB(255, 221, 78, 78)),),
//               //             SizedBox(height: 10,),
//               //             Text("Sewa = 2 Hari", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
//               //           ]
//               //         ),
//               //       ),
//               //           ],
//               //         ),
//               //       ),
//               //       Container(
//               //         height: 40,
//               //         width: 430,
//               //         alignment: Alignment.center,
//               //         child: Text("Total Sewa : Rp 200.000 /hari", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
//               //         decoration: BoxDecoration(
//               //           borderRadius: BorderRadius.circular(10),
//               //           color: Color.fromARGB(255, 91, 152, 223))
//               //       ),
//               //       SizedBox(height: 10,),
//               //       Row(
//               //         mainAxisAlignment: MainAxisAlignment.spaceAround,
//               //         children: [
//               //           ElevatedButton(onPressed: (){                      
//               //             Navigator.push(context, MaterialPageRoute(builder: (context){
//               //             return const ConfirmAdmin();
//               //         }));
//               //           }, 
//               //           style: ElevatedButton.styleFrom(
//               //             primary: Color.fromARGB(255, 0, 212, 110),
//               //           ),
//               //           child: Container(
//               //             alignment: Alignment.center,
//               //             height:40 ,
//               //             width: 120,
//               //             child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
//               //           ),),
//               //           ElevatedButton(onPressed: (){

//               //           }, 
//               //           style: ElevatedButton.styleFrom(
//               //             primary: Color.fromARGB(255, 212, 14, 0),
//               //           ),
//               //           child: Container(
//               //             alignment: Alignment.center,
//               //             height:40 ,
//               //             width: 120,
//               //             child: Text('TOLAK', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,color: Color.fromARGB(255, 255, 255, 255))),
//               //           ),),
//               //         ],
//               //       )                    
//               //     ],
                
//               //   ),
//               // ),

//             ]
//           )
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_chart),
//             label: 'Pesanan',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add_circle,size: 40,color: Color.fromARGB(255, 0, 1, 8),),
//             label:'  ',     
//           ),
//            BottomNavigationBarItem(
//             icon: Icon(Icons.history_outlined),
//             label: 'Riwayat',
//           ),
//         ],
//         currentIndex: 0,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Color.fromARGB(255, 0, 14, 26),
//         showUnselectedLabels: true,
//        ),
//       )
//     );
//   }

//                 Widget buildSewa(Sewa sewa) => 
              //   Container(  
              //   margin: EdgeInsets.all(20),                     
              //   alignment: Alignment.topLeft,
              //   padding : EdgeInsets.only(left: 10,right:10),
              //   height: 250,
              //   width: 430,
              //   decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(15),
              //     color: Colors.white, 
              //     boxShadow: [BoxShadow(
              //       color: Color.fromARGB(255, 223, 223, 223),
              //       blurRadius: 5,)]),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Container(
              //         alignment: Alignment.topLeft,
              //         child:Text('13 - 3 - 2022'), 
              //       ),
              //       SizedBox(height: 10,),
              //       Container(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             Container(
              //         height: 80,
              //         width: 100,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           color: Colors.white,
              //           boxShadow: [BoxShadow(
              //             color: Color.fromARGB(209, 107, 96, 96),
              //             blurRadius: 3,)]
              //         ),
              //         child: Image.network('https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/02dc9c3283f54e8fac55996b2ce7125c.jpg',height: 75,width: 75,),
              //       ),
              //       Container(
              //         padding: EdgeInsets.only(left: 10),
              //         margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              //         child: Column(
              //           children: [
              //             Text(sewa.mobil, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
              //             SizedBox(height: 10,),
              //             Text(sewa.atasnama, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
              //             SizedBox(height: 10,),
              //             Text(sewa.nopol, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),),
              //           ]
              //         ),
              //       ),
              //           ],
              //         ),
              //       ),
              //       ElevatedButton(
              //         onPressed: (){

              //         }, 
              //         child: Container(
              //           height: 70,
              //           width: 100,
              //         )),
              //       SizedBox(height: 10,),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Text(sewa.cdate, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17)),
                        
              //           Text('-', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
                        
              //           Text(sewa.kembali, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17)),
                        
              //         ],
                    
              //       )                    
              //     ],
                
              //   ),
              // );

  
//   void readData() async {
//     DocumentSnapshot snapshot = await db.collection('sewa').document(id).get();
//     print(snapshot.data['name']);
//   }

  // void updateData(DocumentSnapshot doc) async {
  //   await db.collection('sewa').document(doc.documentID).updateData({'todo': 'please 🤫'});
  // }

  // void deleteData(DocumentSnapshot doc) async {
  //   await db.collection('sewa').document(doc.documentID).delete();
  //   setState(() => id = null);
  // }



  // Stream<List<Sewa>> readSewa() => FirebaseFirestore.instance
  // .collection('sewa')
  // // .where('merk', isEqualTo: 'Avanza')
  // .snapshots()
  // .map((snapshot) =>
  //     snapshot.docs.map((doc) => Sewa.fromJson(doc.data())).toList());

  // Future UpdateSewa(Sewa sewa) async{
  //   final docUser = FirebaseFirestore.instance.collection('sewa').doc();
  //   sewa.id = docUser.id;
  //   final json = sewa.toJson();
  //   await docUser.update(json);
  // }
// }