import 'package:awal/home.dart';
import 'package:awal/list_car_user2.dart';
import 'package:awal/list_car_user6.dart';
import 'package:awal/pembayaran.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class CarDescription6 extends StatefulWidget {
  DocumentSnapshot docid;
  CarDescription6({required this.docid});

  @override
  State<CarDescription6> createState() => _CarDescription6State();
}

class _CarDescription6State extends State<CarDescription6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text(widget.docid.get('merk'), style: TextStyle(color: Colors.black),),
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Carlist6Page(),
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(68, 138, 255, 1),Colors.white],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
                height: 160,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 100,
                    color: Colors.white,
                    child: Image.network(widget.docid.get('Image')),
                  ),
                )
              ),
              Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.topLeft,
                child: Text(widget.docid.get('merk'),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ),
                Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text("Rp.",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                    Text(widget.docid.get('tarif'),
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                    Text("/ Hari",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                  ],
                ),
              ),
              Container(
                  height: 443,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(     
                          mainAxisAlignment: MainAxisAlignment.center,               
                          children: [
                            Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [BoxShadow(
                                color: Color.fromARGB(255, 165, 165, 165),
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.white,
                            ),
                            height: 383,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(
                                    child: Text("Deskripsi", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height: 300,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30,right: 30),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Kapasitas Maks : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('kapasitasmaks'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Silinder : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('silinder'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Transmisi : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('transmisi'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Nomor Polisi : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('nopol'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Torsi Maksimal : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('torsimaks'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Bahan Bakar : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('bahan'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Contact Person : ", style: TextStyle(fontSize: 16),),
                                                  Text(widget.docid.get('kontak'), style: TextStyle(fontSize: 16),),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                  //   ElevatedButton(
                  //     onPressed: () {
                        
                  //     }, 
                  //     style: ElevatedButton.styleFrom(
                  //       primary: Colors.red,
                  //       onPrimary: Colors.black,
                  //       shadowColor: Colors.black,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30),
                          
                  //       )
                  //     ),
                  //     child: Container(
                  //       alignment: Alignment.center,
                  //       height: 20,
                  //       width: 75,
                  //       child: const Text("Sewa", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
                  //     )),
                  // ),
                                        ],
                                      ),
                                    )
                                  )
                                ],
                              ),
                            ),
                            ),
                          ]),
            )
          ],
        ),
      ),
          ]),
      //             bottomNavigationBar: BottomNavigationBar(
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
          )
    );
  }
}