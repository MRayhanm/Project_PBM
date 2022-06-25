import 'package:awal/Pesananadmin.dart';
import 'package:awal/bottomadmin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditSewa extends StatefulWidget {
  DocumentSnapshot docid;
  EditSewa({required this.docid});

  @override
  _editnoteState createState() => _editnoteState();
}

class _editnoteState extends State<EditSewa> {
  // TextEditingController mobil = TextEditingController();
  // TextEditingController nopol = TextEditingController();
  // TextEditingController atasnama = TextEditingController();
  // TextEditingController nomor = TextEditingController();
  // TextEditingController tujuan = TextEditingController();
  // TextEditingController kembali = TextEditingController();
  //   TextEditingController cdate = TextEditingController();
  final kembali = DateFormat("yyyy-MM-dd").format(DateTime.now());
  // TextEditingController status = TextEditingController();
  final status = 'Penyewaan Selesai';

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
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: Text(widget.docid.get('atasnama'), style: TextStyle(color: Colors.black),),
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PesananPage(),
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
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Color.fromARGB(255, 245, 245, 245),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Image.network(widget.docid.get('Image')),
                        ),
                        SizedBox(height: 10),
                        Text(
                          widget.docid.get('mobil'),
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 50.0),
                          child: Column(
                            children: [
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Warna Mobil  :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                  Text(
                                      widget.docid.get('warna'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'Nomor Polisi  :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                  Text(
                                      widget.docid.get('nopol'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                ],
                              ),
                              
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                          'Nama Penyewa  :',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500, fontSize: 16),
                                        ),
                                  Text(
                                      widget.docid.get('atasnama'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                ],
                              ),
                              
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                          'Nomor Telepon  :',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500, fontSize: 16),
                                        ),
                                  Text(
                                      widget.docid.get('nomor'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                ],
                              ),
                              
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                          'Tujuan  :',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500, fontSize: 16),
                                        ),
                                  Text(
                                      widget.docid.get('tujuan'),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500, fontSize: 16),
                                    ),
                                ],
                              ),
                              
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    widget.docid.get('tanggal'),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800, fontSize: 18),
                                  ),
                                  Text("-",
                                  style: TextStyle(
                                        fontWeight: FontWeight.w800, fontSize: 26)),
                                    Text(
                                    widget.docid.get('tanggal kembali'),
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                            Padding(
                              padding: const EdgeInsets.only(left: 125, right: 125),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Rp.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800, fontSize: 18),
                                      ),
                                      Text(
                                        widget.docid.get('tarif'),
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        SizedBox(height: 15),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff2ecc71),
                          ),
                          onPressed: () {
                            widget.docid.reference.update({
                'tanggal kembali': kembali,
                'status' : status,
              }).whenComplete(() {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => BottomAdminPage()));
              });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Konfirmasi Pengembalian',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        
                      //   TextButton(
                      //     style: TextButton.styleFrom(
                      //       backgroundColor: Color(0xff6F1E51),
                      //     ),
                      //     onPressed: () {                      
                      //     Navigator.push(context, MaterialPageRoute(builder: (context){
                      //     return MapSample();
                      // }));

                      //     },
                      //     child: Padding(
                      //       padding: EdgeInsets.all(15),
                      //       child: Text(
                      //         'LACAK LOKASI',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ),
                      //   ),
                      ],
                    ),
                  ),
                ),
              ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
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

        // child: Column(
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: mobil,
        //         decoration: InputDecoration(
        //           hintText: 'mobil',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //                 Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: nopol,
        //         decoration: InputDecoration(
        //           hintText: 'nopol',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //                 Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: atasnama,
        //         decoration: InputDecoration(
        //           hintText: 'atasnama',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //                 Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: nomor,
        //         decoration: InputDecoration(
        //           hintText: 'nomor',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //                 Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: tujuan,
        //         decoration: InputDecoration(
        //           hintText: 'tujuan',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //                 Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: kembali,
        //         decoration: InputDecoration(
        //           hintText: 'kembali',
        //         ),
        //       ),
        //     ),
        //                             Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: status,
        //         decoration: InputDecoration(
        //           hintText: 'status',
        //         ),
        //       ),
        //     ),
        //                                         Container(
        //       decoration: BoxDecoration(border: Border.all()),
        //       child: TextField(
        //         controller: cdate,
        //         decoration: InputDecoration(
        //           hintText: 'tanggal',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //   ],
        // ),
      // ),
    );
  }
}
// import 'package:awal/penyewaan.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class editnote extends StatefulWidget {
//   DocumentSnapshot docid;
//   editnote({required this.docid});

//   @override
//   _editnoteState createState() => _editnoteState();
// }

// class _editnoteState extends State<editnote> {
//   TextEditingController status = TextEditingController();

//   @override
//   void initState() {
//     status = TextEditingController(text: widget.docid.get('status'));
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           MaterialButton(
//             onPressed: () {
//               widget.docid.reference.update({
//                 'status': status.text,
//               }).whenComplete(() {
//                 Navigator.pushReplacement(
//                     context, MaterialPageRoute(builder: (_) => SewaPage()));
//               });
//             },
//             child: Text("save"),
//           ),
//           MaterialButton(
//             onPressed: () {
//               widget.docid.reference.delete().whenComplete(() {
//                 Navigator.pushReplacement(
//                     context, MaterialPageRoute(builder: (_) => SewaPage()));
//               });
//             },
//             child: Text("delete"),
//           ),
//         ],
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all()),
//               child: TextField(
//                 controller: status,
//                 decoration: InputDecoration(
//                   hintText: 'status',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }