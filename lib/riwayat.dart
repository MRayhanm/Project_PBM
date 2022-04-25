import 'package:awal/konfirmasi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RiwayatPage());
}

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({Key? key}) : super(key: key);
  @override
  _RiwayatPageState createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  
  @override
  Widget build(BuildContext context) {
    var white;
    return MaterialApp(
      title: 'profile',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Riwayat")
        ),
        body: SafeArea(
          child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 245, 245, 245),
                  height: 680,
                  child: ListView(
                    children: [
              Container(
                  height: 235,
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
                            color: Color.fromARGB(255, 204, 232, 255),
                            ),
                            height: 215,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 125,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 100,
                                            child: Image.asset('assets/1.jpg'),
                                          ),
                                        )
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              child: Text("Daihatsu Terios",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                                              ),
                                          Container(
                                              child: Text("Rp. 200.000 / hari",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                                              ),
                                          Container(
                                              child: Text('Sewa = 2 Hari',
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
                                              ),
                                        ],
                                      ),
                                  ],
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    color: Color.fromARGB(255, 128, 178, 219),
                                    width: 400,
                                    height: 40,
                                    child: Text("Total Sewa :", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                                      ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => PembayaranPage(),
                        //   ));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 5, 29),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 75,
                        child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
                      )),
                  ),
                                ],
                              ),
                            ),
                            ),
                          ]),
            )
          ],
        ),
      ),
              Container(
                  height: 235,
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
                            color: Color.fromARGB(255, 204, 232, 255),
                            ),
                            height: 215,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 125,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 100,
                                            child: Image.asset('assets/1.jpg'),
                                          ),
                                        )
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              child: Text("Daihatsu Terios",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                                              ),
                                          Container(
                                              child: Text("Rp. 200.000 / hari",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                                              ),
                                          Container(
                                              child: Text('Sewa = 2 Hari',
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
                                              ),
                                        ],
                                      ),
                                  ],
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    color: Color.fromARGB(255, 128, 178, 219),
                                    width: 400,
                                    height: 40,
                                    child: Text("Total Sewa :", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                                      ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => PembayaranPage(),
                        //   ));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 5, 29),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 75,
                        child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
                      )),
                  ),
                                ],
                              ),
                            ),
                            ),
                          ]),
            )
          ],
        ),
      ),
              Container(
                  height: 235,
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
                            color: Color.fromARGB(255, 204, 232, 255),
                            ),
                            height: 215,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 125,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 100,
                                            child: Image.asset('assets/1.jpg'),
                                          ),
                                        )
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              child: Text("Daihatsu Terios",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                                              ),
                                          Container(
                                              child: Text("Rp. 200.000 / hari",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                                              ),
                                          Container(
                                              child: Text('Sewa = 2 Hari',
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
                                              ),
                                        ],
                                      ),
                                  ],
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    color: Color.fromARGB(255, 128, 178, 219),
                                    width: 400,
                                    height: 40,
                                    child: Text("Total Sewa :", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                                      ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => PembayaranPage(),
                        //   ));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 5, 29),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 75,
                        child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
                      )),
                  ),
                                ],
                              ),
                            ),
                            ),
                          ]),
            )
          ],
        ),
      ),
              Container(
                  height: 235,
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
                            color: Color.fromARGB(255, 204, 232, 255),
                            ),
                            height: 215,
                            width: 376,
                            child: SizedBox(
                              child: Column(
                                children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 125,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 130,
                                            height: 100,
                                            child: Image.asset('assets/1.jpg'),
                                          ),
                                        )
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                              child: Text("Daihatsu Terios",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                                              ),
                                          Container(
                                              child: Text("Rp. 200.000 / hari",
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.red),),
                                              ),
                                          Container(
                                              child: Text('Sewa = 2 Hari',
                                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700,),),
                                              ),
                                        ],
                                      ),
                                  ],
                                ),
                                  Container(
                                    alignment: Alignment.center,
                                    color: Color.fromARGB(255, 128, 178, 219),
                                    width: 400,
                                    height: 40,
                                    child: Text("Total Sewa :", style: TextStyle(
                                      fontSize: 30,
                                    ),)
                                  ),
                                                      ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => PembayaranPage(),
                        //   ));
                      }, 
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 0, 5, 29),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          
                        )
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 75,
                        child: const Text("Nilai", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.white),
                      )),
                  ),
                                ],
                              ),
                            ),
                            ),
                          ]),
            )
          ],
        ),
      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

