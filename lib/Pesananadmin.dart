import 'package:awal/addpesanan.dart';
import 'package:awal/bottomadmin.dart';
import 'package:awal/editsewa.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PesananPage extends StatefulWidget {
  @override
  _PesananPageState createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('sewa')
      .where('status', isEqualTo: 'Dalam Penyewaan')
      .snapshots();
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
        title: Text(
          'Penyewaan',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BottomAdminPage(),
              ));
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.white],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
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
                return GestureDetector(
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
                          child: Container(
                            margin: EdgeInsets.all(8),
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            height: 150,
                            width: 450,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                    blurRadius: 5,
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(snapshot
                                      .data!.docChanges[index].doc['status']),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    209, 107, 96, 96),
                                                blurRadius: 3,
                                              )
                                            ]),
                                        child: Image.network(snapshot.data!
                                            .docChanges[index].doc['Image']),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 20),
                                        child: Column(children: [
                                          Text(
                                            snapshot.data!.docChanges[index]
                                                .doc['mobil'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            snapshot.data!.docChanges[index]
                                                .doc['nopol'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            snapshot.data!.docChanges[index]
                                                .doc['atasnama'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 19),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                        snapshot.data!.docChanges[index]
                                            .doc['tanggal'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17)),
                                    Text('-',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20)),
                                    Text(
                                        snapshot.data!.docChanges[index]
                                            .doc['tanggal kembali'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17)),
                                  ],
                                )
                              ],
                            ),
                          )),
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
