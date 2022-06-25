import 'package:awal/bottom.dart';
import 'package:awal/car_description.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Carlist4Page extends StatefulWidget {
  @override
  State<Carlist4Page> createState() => _Carlist4PageState();
}

class _Carlist4PageState extends State<Carlist4Page> {
  final Stream<QuerySnapshot> _carsStream =
      FirebaseFirestore.instance.collection('cars').where('status', isEqualTo: 'Tersedia').snapshots();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            Container(
              height: 277,
              width: 400,
              child: Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BottomPage(),
                      ));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    )),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0)),
                  image: DecorationImage(
                      image: AssetImage('assets/2.jpg'), fit: BoxFit.fill)),
              alignment: Alignment.bottomCenter,
            ),
            Container(
              color: Color.fromARGB(255, 245, 245, 245),
              height: 100,
              alignment: Alignment.centerLeft,
              child: Text(
                "Mobil",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            StreamBuilder(
              stream: _carsStream,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
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
                                builder: (_) => CarDescription4(
                                    docid: snapshot.data!.docs[index]),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 83, 83, 83),
                                      blurRadius: 3,
                                    )
                                  ]),
                              child: ListTile(
                                leading: Image.network(snapshot
                                    .data!.docChanges[index].doc['Image']),
                                title: Text(
                                  snapshot.data!.docChanges[index].doc['merk'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 22),
                                ),
                                subtitle: Text(
                                  snapshot.data!.docChanges[index].doc['tahun'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 22),
                                ),
                              ),
                            ),
                          ));
                    },
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
