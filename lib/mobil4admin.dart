import 'package:awal/addpesanan.dart';
import 'package:awal/editmobil4.dart';
import 'package:awal/editsewa.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class MobilKecilPage extends StatefulWidget {
  @override
  _MobilKecilPageState createState() => _MobilKecilPageState();
}

class _MobilKecilPageState extends State<MobilKecilPage> {
  final Stream<QuerySnapshot> _carsStream =
      FirebaseFirestore.instance.collection('cars').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text('Mobil 4 Kursi', style: TextStyle(color: Colors.black),),
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
                            EditMobil4(docid: snapshot.data!.docs[index]),
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
                          Text(snapshot.data!.docChanges[index].doc['merk'], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
                          SizedBox(height: 10,),
                          Text(snapshot.data!.docChanges[index].doc['tahun'], style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),),
                          SizedBox(height: 10,),
                          Text(snapshot.data!.docChanges[index].doc['nopol'], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),),
                        ]
                      ),
                    ),
                        ],
                      ),
                      
                    ),        
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     color: Colors.white, 
                     boxShadow: [BoxShadow(
                    color: Color.fromARGB(255, 223, 223, 223),
                    blurRadius: 5,)]),
                      child: Text(snapshot.data!.docChanges[index].doc['status'], style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
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