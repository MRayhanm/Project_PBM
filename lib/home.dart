import 'package:awal/cameraprev.dart';
import 'package:awal/cameraprev2.dart';
import 'package:awal/car_description.dart';
import 'package:awal/category_user.dart';
import 'package:awal/editsewa.dart';
import 'package:awal/first_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


int _selectedIndex = 0;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final Stream<QuerySnapshot> _carsStream =
      FirebaseFirestore.instance.collection('cars').snapshots();
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
                color: Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                            return FirstPage();
                        }));
                  },
                  icon: Icon(Icons.logout, color: Colors.red,),                  
                ),
              ),
              Container(
                height: 180,
                color: Color.fromARGB(255, 245, 245, 245),
                child: Image.asset('assets/logo.png'),
              ),
              Container(
                color: const Color.fromARGB(255, 245, 245, 245),
                alignment: Alignment.topLeft,
                child: Text("Tersedia",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
              ),
              Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(

                  color: Color.fromARGB(255, 245, 245, 245)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 420,
                        decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 245, 245),
                        borderRadius: BorderRadius.circular(12),
                      ),
                        child: Column(
                          children: [
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
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
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
                  child: Column(
                    children: [
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const [BoxShadow(
                                        color: Color.fromARGB(255, 165, 165, 165),
                                        blurRadius: 5,
                                      ),
                                      ],
                                      color: Colors.white,
                                    ),
                                      height: 160,
                                      width: 160,
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 128,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Image.network(snapshot.data!.docChanges[index].doc['Image']),
                                              alignment: Alignment.topCenter,
                                              iconSize: 180,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(snapshot.data!.docChanges[index].doc['merk'],style: TextStyle(fontWeight: FontWeight.w800),),
                                                Text(snapshot.data!.docChanges[index].doc['tahun'],style: TextStyle(fontWeight: FontWeight.w800),),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                  ),
                                  
                    ],
                  ),
                );
              },
            ),
          );
        },
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
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
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
                                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const [BoxShadow(
                                        color: Color.fromARGB(255, 165, 165, 165),
                                        blurRadius: 5,
                                      ),
                                      ],
                                      color: Colors.white,
                                    ),
                                      height: 160,
                                      width: 160,
                                    child: SizedBox(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 128,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Image.network(snapshot.data!.docChanges[index].doc['Image']),
                                              alignment: Alignment.topCenter,
                                              iconSize: 180,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(snapshot.data!.docChanges[index].doc['merk'],style: TextStyle(fontWeight: FontWeight.w800),),
                                                Text(snapshot.data!.docChanges[index].doc['tahun'],style: TextStyle(fontWeight: FontWeight.w800),),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                  ),
                                  
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
                          ],
                        ),
                      ),
      
                  //     StreamBuilder<List<Cars>>(
                  //       stream: readCars(),
                  //       builder: (context, snapshot) {
                  //         if (snapshot.hasError){
                  //          return Text('Error ${snapshot.error}');
                  //       }
                  //       else if (snapshot.hasData){
                  //          final Cars = snapshot.data!;
                  //         return Padding(
                  //           padding: const EdgeInsets.only(left: 0.0, right: 15.0, top: 15.0, bottom: 15.0),
                  //           child: Container(
                  //             height : 180,
                  //             child: ListView(
                  //               scrollDirection: Axis.horizontal,
                  //               children: Cars.map(buildCars).toList(),
                  //             ),
                  //           ),
                  //         );
                  //       }
                  //       else {
                  //        return Center(child: CircularProgressIndicator());
                  // }
                  //       }
                  //     ),
                  //     StreamBuilder<List<Cars2>>(
                  //       stream: readCars2(),
                  //       builder: (context, snapshot) {
                  //         if (snapshot.hasError){
                  //          return Text('Error ${snapshot.error}');
                  //       }
                  //       else if (snapshot.hasData){
                  //          final Cars2 = snapshot.data!;
                  //         return Padding(
                  //           padding: const EdgeInsets.only(left: 0.0, right: 15.0, top: 15.0, bottom: 15.0),
                  //           child: Container(
                  //             height : 180,
                  //             child: ListView(
                  //               scrollDirection: Axis.horizontal,
                  //               children: Cars2.map(buildCars2).toList(),
                  //             ),
                  //           ),
                  //         );
                  //       }
                  //       else {
                  //        return Center(child: CircularProgressIndicator());
                  // }
                  //       }
                  //     ),
                    ],
                  ),
                ),
              // Container(
              //   color: const Color.fromARGB(255, 245, 245, 245),
              //   height: 120,
              //   child: Padding(
              //     padding: const EdgeInsets.all(27.8),
                  
              //     child: Container(
              //       color: const Color.fromARGB(255, 245, 245, 245),
              //       height: 55,
              //       child: ElevatedButton(
              //         onPressed: () {
              //           Navigator.push(context, MaterialPageRoute(builder: (context) {
              //             return const CategoryPage();
              //           }));
              //         }, 
              //         style: ElevatedButton.styleFrom(
              //           primary: Colors.white,
              //           onPrimary: Colors.black,
              //           shadowColor: Colors.black,
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(30),
                          
              //           )
              //         ),
              //         child: Container(
              //           alignment: Alignment.center,
              //           height: 100,
              //           width: 350,
              //           child: const Text("Kategori Mobil", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300,),
              //         )),
              //     ),
              //   )
              //   ),
              // )
              ],
          ),
        
        ),

      ),
    );
  }
                      // Widget buildCars(Cars cars) => 
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(20),
                      //           boxShadow: const [BoxShadow(
                      //             color: Color.fromARGB(255, 165, 165, 165),
                      //             blurRadius: 5,
                      //           ),
                      //           ],
                      //           color: Colors.white,
                      //         ),
                      //           height: 160,
                      //           width: 160,
                      //         child: SizedBox(
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 height: 128,
                      //                 child: IconButton(
                      //                   onPressed: () {},
                      //                   icon: Image.asset('assets/avanza.jpg'),
                      //                   alignment: Alignment.topCenter,
                      //                   iconSize: 180,
                      //                 ),
                      //               ),
                      //               Padding(
                      //                 padding: const EdgeInsets.all(8.0),
                      //                 child: Row(
                      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                   children: [
                      //                     Text(cars.merk,style: TextStyle(fontWeight: FontWeight.w800),),
                      //                     Text(cars.tahun.toString())
                      //                   ],
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         ),
                      //       );


                      // Widget buildCars2(Cars2 cars2) => 
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 27.0),
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(20),
                      //           boxShadow: const [BoxShadow(
                      //             color: Color.fromARGB(255, 165, 165, 165),
                      //             blurRadius: 5,
                      //           ),
                      //           ],
                      //           color: Colors.white,
                      //         ),
                      //           height: 160,
                      //           width: 160,
                      //         child: SizedBox(
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 height: 128,
                      //                 child: IconButton(
                      //                   onPressed: () {},
                      //                   icon: Image.asset('assets/avanza.jpg'),
                      //                   alignment: Alignment.topCenter,
                      //                   iconSize: 180,
                      //                 ),
                      //               ),
                      //               Padding(
                      //                 padding: const EdgeInsets.all(8.0),
                      //                 child: Row(
                      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //                   children: [
                      //                     Text(cars2.merk,style: TextStyle(fontWeight: FontWeight.w800),),
                      //                     Text(cars2.tahun.toString())
                      //                   ],
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         ),
                      //       );

  //   Stream<List<Cars>> readCars() => FirebaseFirestore.instance
  // .collection('cars')
  // .snapshots()
  // .map((snapshot) =>
  //     snapshot.docs.map((doc) => Cars.fromJson(doc.data())).toList());

  // Stream<List<Cars2>> readCars2() => FirebaseFirestore.instance
  // .collection('cars2')
  // .snapshots()
  // .map((snapshot) =>
  //     snapshot.docs.map((doc) => Cars2.fromJson(doc.data())).toList());
}
