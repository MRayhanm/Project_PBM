import 'package:awal/Pesananadmin.dart';
import 'package:awal/mobil4admin.dart';
import 'package:awal/mobil6admin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditMobil6 extends StatefulWidget {
  DocumentSnapshot docid;
  EditMobil6({required this.docid});

  @override
  _EditMobil6State createState() => _EditMobil6State();
}

class _EditMobil6State extends State<EditMobil6> {
  TextEditingController merk = TextEditingController();
  TextEditingController tarif = TextEditingController();
  TextEditingController tahun = TextEditingController();
  TextEditingController transmisi = TextEditingController();
  TextEditingController kapasitasmaks = TextEditingController();
  TextEditingController torsimaks = TextEditingController();
  TextEditingController bensin = TextEditingController();
  TextEditingController silinder = TextEditingController();
  TextEditingController nopol = TextEditingController();
  TextEditingController kontak = TextEditingController();
  final status = 'Dalam Penyewaan';

  @override
  void initState() {
    // mobil = TextEditingController(text: widget.docid.get('mobil'));
    // nopol = TextEditingController(text: widget.docid.get('nopol'));
    // atasnama = TextEditingController(text: widget.docid.get('atasnama'));
    // nomor = TextEditingController(text: widget.docid.get('nomor'));
    // tujuan = TextEditingController(text: widget.docid.get('tujuan'));
    // kembali = TextEditingController(text: widget.docid.get('kembali'));
    // status = TextEditingController(text: widget.docid.get('status'));
    // cdate = TextEditingController(text: widget.docid.get('tanggal'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     MaterialButton(
      //       onPressed: () {
      //         widget.docid.reference.update({
      //             'status': status,
      //             'merk' : merk.text,
      //             'tarif' : tarif.text,
      //             'tahun' : tahun.text,
      //             'transmisi' : transmisi.text,
      //             'kapasitasmaks' : kapasitasmaks.text,
      //             'torsimaks' : torsimaks.text,
      //             'alamatsewa' : alamatsewa.text,
      //             'silinder' : silinder.text,
      //             'nopol' : nopol.text
      //         }).whenComplete(() {
      //           Navigator.pushReplacement(
      //               context, MaterialPageRoute(builder: (_) => PesananPage()));
      //         });
      //       },
      //       child: Text("save"),
      //     ),
      //     MaterialButton(
      //       onPressed: () {
      //         widget.docid.reference.delete().whenComplete(() {
      //           Navigator.pushReplacement(
      //               context, MaterialPageRoute(builder: (_) => PesananPage()));
      //         });
      //       },
      //       child: Text("delete"),
      //     ),
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Color.fromARGB(255, 245, 245, 245),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(widget.docid.get('Image')),
                              fit: BoxFit.fill,
                              )
                              
                          ),
                          // child: Image.network(widget.docid.get('Image')),
                          
                        ),
                        SizedBox(height: 7),
                                                Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Merk',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: merk,
                          // controller: _alamat,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('merk'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                        Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Tarif',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: tarif,
                          // controller: _durasi,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('tarif'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                                            Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Tahun',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: tahun,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('tahun'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                                                                  Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Nomor Polisi',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: nopol,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('nopol'),
                            hintStyle: TextStyle(fontSize: 13,),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                      //                       Container(
                      //   padding: EdgeInsets.only(left: 13.0, right:9.0),
                      //   alignment: Alignment.topLeft,
                      //   child:Text('Tipe Mesin',style: TextStyle(fontWeight: FontWeight.w800)),
                      // ),
                      // Container(
                      //   height: 30,
                      //   width: 380,
                      //   child: TextField(
                      //     controller: controllerKapasitasmaks,
                      //     decoration: InputDecoration(
                      //       fillColor: Color.fromARGB(255, 175, 175, 175),
                      //       filled: true,
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(20),
                      //         borderSide: BorderSide(color: Colors.black))
                      //     ),
                      //   ),
                      // ),
                                            Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Kapasitas Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: kapasitasmaks,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('kapasitasmaks'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                                            Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Bahan Bakar',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: bensin,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('bahan'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                                            Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Silinder',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: silinder,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('silinder'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                                            Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        
                        child:Text('Transmisi',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        alignment: Alignment.bottomCenter,
                        child: TextField(
                          controller: transmisi,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('transmisi'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                                            Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Torsi Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: torsimaks,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('torsimaks'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Nomor',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 35,
                        width: 380,
                        child: TextField(
                          controller: kontak,
                          decoration: InputDecoration(
                            hintText: widget.docid.get('kontak'),
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                       ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                                
                              )
                            ),
                      onPressed: (){
                        widget.docid.reference.update({                              
                            'merk' : merk.text,
                            'tarif' : tarif.text,
                            'tahun' : tahun.text,
                            'transmisi' : transmisi.text,
                            'kapasitasmaks' : kapasitasmaks.text,
                            'torsimaks' : torsimaks.text,
                            'bahan' : bensin.text,
                            'silinder' : silinder.text,
                            'nopol' : nopol.text,
                            'kontak' : kontak.text
                        }).whenComplete(() {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (_) => MobilBesarPage()));
                        });
                      }, 
                      child: Container(
                      padding: EdgeInsets.only(left:7, right:0),
                      height:20,
                      alignment: Alignment.center,
                      child: Text("Ubah Data",
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700,),),
                    ),
                      ),
                        SizedBox(height: 6,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 55, 255, 139),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                                
                              )
                            ),
                      onPressed: (){
                        widget.docid.reference.update({
                          'status' : 'Dalam Penyewaan',
                        }).whenComplete(() {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (_) => MobilBesarPage()));
                        });
                      }, 
                      child: Container(
                      padding: EdgeInsets.only(left:7, right:0),
                      height:20,
                      alignment: Alignment.center,
                      child: Text("Sewakan Mobil",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),),
                    ),
                      ),
                      SizedBox(height: 3,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 212, 14, 14),
                        onPrimary: Colors.black,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                                
                              )
                            ),
                      onPressed: (){
                        widget.docid.reference.update({
                          'status' : 'Tersedia',
                        }).whenComplete(() {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (_) => MobilBesarPage()));
                        });
                      }, 
                      child: Container(
                      padding: EdgeInsets.only(left:7, right:0),
                      height:20,
                      alignment: Alignment.center,
                      child: Text("Mobil Dikembalikan",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),),
                    ),
                      ),
                                              ],
                                            ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 3,),
                            Padding(
                              padding: const EdgeInsets.only(left: 0, right:0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Status  :  ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800, fontSize: 18),
                                      ),
                                      Text(
                                        widget.docid.get('status'),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
            ],
          ),
    );
  }
}

                          
// import 'package:awal/Pesananadmin.dart';
// import 'package:awal/mobil4admin.dart';
// import 'package:awal/mobil6admin.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class EditMobil6 extends StatefulWidget {
//   DocumentSnapshot docid;
//   EditMobil6({required this.docid});

//   @override
//   _EditMobil6State createState() => _EditMobil6State();
// }

// class _EditMobil6State extends State<EditMobil6> {
//   TextEditingController merk = TextEditingController();
//   TextEditingController tarif = TextEditingController();
//   TextEditingController tahun = TextEditingController();
//   TextEditingController transmisi = TextEditingController();
//   TextEditingController kapasitasmaks = TextEditingController();
//   TextEditingController torsimaks = TextEditingController();
//   TextEditingController alamatsewa = TextEditingController();
//   TextEditingController silinder = TextEditingController();
//   TextEditingController nopol = TextEditingController();
//   final status = 'Dalam Penyewaan';

//   @override
//   void initState() {
//     // mobil = TextEditingController(text: widget.docid.get('mobil'));
//     // nopol = TextEditingController(text: widget.docid.get('nopol'));
//     // atasnama = TextEditingController(text: widget.docid.get('atasnama'));
//     // nomor = TextEditingController(text: widget.docid.get('nomor'));
//     // tujuan = TextEditingController(text: widget.docid.get('tujuan'));
//     // kembali = TextEditingController(text: widget.docid.get('kembali'));
//     // status = TextEditingController(text: widget.docid.get('status'));
//     // cdate = TextEditingController(text: widget.docid.get('tanggal'));

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   actions: [
//       //     MaterialButton(
//       //       onPressed: () {
//       //         widget.docid.reference.update({
//       //             'status': status,
//       //             'merk' : merk.text,
//       //             'tarif' : tarif.text,
//       //             'tahun' : tahun.text,
//       //             'transmisi' : transmisi.text,
//       //             'kapasitasmaks' : kapasitasmaks.text,
//       //             'torsimaks' : torsimaks.text,
//       //             'alamatsewa' : alamatsewa.text,
//       //             'silinder' : silinder.text,
//       //             'nopol' : nopol.text
//       //         }).whenComplete(() {
//       //           Navigator.pushReplacement(
//       //               context, MaterialPageRoute(builder: (_) => PesananPage()));
//       //         });
//       //       },
//       //       child: Text("save"),
//       //     ),
//       //     MaterialButton(
//       //       onPressed: () {
//       //         widget.docid.reference.delete().whenComplete(() {
//       //           Navigator.pushReplacement(
//       //               context, MaterialPageRoute(builder: (_) => PesananPage()));
//       //         });
//       //       },
//       //       child: Text("delete"),
//       //     ),
//       //   ],
//       // ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Card(
//                   color: Color.fromARGB(255, 245, 245, 245),
//                   child: Padding(
//                     padding: EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         Container(
//                           width: MediaQuery.of(context).size.width * 0.5,
//                           child: Image.asset('assets/1.jpg'),
//                         ),
//                         SizedBox(height: 10),
//                                                 Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Merk',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: merk,
//                           // controller: _alamat,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('merk'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                         Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Tarif',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: tarif,
//                           // controller: _durasi,
//                           keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('tarif'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Tahun',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: tahun,
//                           keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('tahun'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                                                   Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Nomor Polisi',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: nopol,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('nopol'),
//                             hintStyle: TextStyle(fontSize: 13,),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                       //                       Container(
//                       //   padding: EdgeInsets.only(left: 13.0, right:9.0),
//                       //   alignment: Alignment.topLeft,
//                       //   child:Text('Tipe Mesin',style: TextStyle(fontWeight: FontWeight.w800)),
//                       // ),
//                       // Container(
//                       //   height: 30,
//                       //   width: 380,
//                       //   child: TextField(
//                       //     controller: controllerKapasitasmaks,
//                       //     decoration: InputDecoration(
//                       //       fillColor: Color.fromARGB(255, 175, 175, 175),
//                       //       filled: true,
//                       //       border: OutlineInputBorder(
//                       //         borderRadius: BorderRadius.circular(20),
//                       //         borderSide: BorderSide(color: Colors.black))
//                       //     ),
//                       //   ),
//                       // ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Kapasitas Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: kapasitasmaks,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('kapasitasmaks'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Alamat penyewaan',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: alamatsewa,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('alamatsewa'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Silinder',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: silinder,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('silinder'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
                        
//                         child:Text('Transmisi',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         alignment: Alignment.bottomCenter,
//                         child: TextField(
//                           controller: transmisi,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('transmisi'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                                             Container(
//                         padding: EdgeInsets.only(left: 13.0, right:9.0),
//                         alignment: Alignment.topLeft,
//                         child:Text('Torsi Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
//                       ),
//                       Container(
//                         height: 35,
//                         width: 380,
//                         child: TextField(
//                           controller: torsimaks,
//                           decoration: InputDecoration(
//                             hintText: widget.docid.get('torsimaks'),
//                             fillColor: Color.fromARGB(255, 175, 175, 175),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20),
//                               borderSide: BorderSide(color: Colors.black))
//                           ),
//                         ),
//                       ),
//                         SizedBox(height: 20,),
//                                             ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 55, 255, 139),
//                         onPrimary: Colors.black,
//                         shadowColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
                                
//                               )
//                             ),
//                       onPressed: (){
//                         widget.docid.reference.update({
//                           'status' : 'Dalam Penyewaan',
//                         }).whenComplete(() {
//                           Navigator.pushReplacement(
//                               context, MaterialPageRoute(builder: (_) => MobilBesarPage()));
//                         });
//                       }, 
//                       child: Container(
//                       padding: EdgeInsets.only(left:7, right:0),
//                       height:50,
//                       alignment: Alignment.center,
//                       child: Text("Sewakan Mobil",
//                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700,),),
//                     ),
//                       ),
//                       SizedBox(height: 10,),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                         primary: Color.fromARGB(255, 212, 14, 14),
//                         onPrimary: Colors.black,
//                         shadowColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
                                
//                               )
//                             ),
//                       onPressed: (){
//                         widget.docid.reference.update({
//                           'status' : 'Tersedia',
//                         }).whenComplete(() {
//                           Navigator.pushReplacement(
//                               context, MaterialPageRoute(builder: (_) => MobilBesarPage()));
//                         });
//                       }, 
//                       child: Container(
//                       padding: EdgeInsets.only(left:7, right:0),
//                       height:50,
//                       alignment: Alignment.center,
//                       child: Text("Mobil Dikembalikan",
//                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),),
//                     ),
//                       ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20,),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 0, right:0),
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         'Status  :  ',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w800, fontSize: 18),
//                                       ),
//                                       Text(
//                                         widget.docid.get('status'),
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w800, fontSize: 18),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//             ],
//           ),
//     );
//   }
// }

                          