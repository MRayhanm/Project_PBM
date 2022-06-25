import 'dart:io';
import 'package:awal/profileadmin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class SewaPage extends StatefulWidget {
  const SewaPage({ Key? key }) : super(key: key);
  
  @override
  State<SewaPage> createState() => _SewaPageState();
}

class _SewaPageState extends State<SewaPage> {
  final controller = TextEditingController();
  final controllerMobil = TextEditingController();
  final controllerNopol = TextEditingController();
  final controllerAtasNama = TextEditingController();
  final controllerNomor = TextEditingController();
  final controllerDurasi = TextEditingController();
  final controllerTujuan = TextEditingController();
  final controllerKembali = TextEditingController();
  final cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  final status = 'dalam peminjaman';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobil Baru',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    child: Column(children: [
                        Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Mobil',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerMobil,
                          // controller: _alamat,
                          decoration: InputDecoration(
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
                        child:Text('Nopol',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerNopol,
                          // controller: _durasi,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
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
                        child:Text('atas nama',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerAtasNama,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
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
                        child:Text('nomor hp',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerNomor,
                          decoration: InputDecoration(
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
                        child:Text('durasi',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerDurasi,
                          decoration: InputDecoration(
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
                        child:Text('tujuan',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerTujuan,
                          decoration: InputDecoration(
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
                        child:Text('Tanggal Kembali',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerKembali,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 175, 175, 175),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black))
                          ),
                        ),
                      ),
                        SizedBox(height: 50,),

                        ElevatedButton(onPressed: () {
                          final sewa = Sewa(
                            cdate: cdate,
                            kembali: controllerKembali.text,
                            mobil: controllerMobil.text, 
                            nopol: controllerNopol.text, 
                            atasnama: controllerAtasNama.text,
                            nomor: controllerNomor.text,
                            durasi: controllerDurasi.text,
                            tujuan: controllerTujuan.text,
                            status: status
                            );
                          // final merk = controller.text;

                          createSewa(sewa);
                          _showDialog(context);
                          
                        }, 
                        child: Text('NEXT',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),)
                      
                    ]),
                    
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future createSewa(Sewa sewa) async{
    final docSewa = FirebaseFirestore.instance.collection('sewa').doc();
    sewa.id = docSewa.id;
    final json = sewa.toJson();
    await docSewa.set(json);
  }
}
class Sewa{
  String id;
  final String cdate;
  final String kembali;
  final String mobil;
  final String nopol;
  final String atasnama;
  final String nomor;
  final String durasi;
  final String tujuan;
  final String status;

  Sewa({
    this.id = '',
    required this.cdate,
    required this.kembali,
    required this.mobil,
    required this.nopol,
    required this.atasnama,
    required this.nomor,
    required this.durasi,
    required this.tujuan,
    required this.status,
  });

  Map<String, dynamic> toJson() => {
    'id' : id,
    'tanggal': cdate,
    'tanggal kembali': kembali,
    'mobil' : mobil,
    'nopol' : nopol,
    'atasnama' : atasnama,
    'nomor' : nomor,
    'durasi' : durasi,
    'tujuan' : tujuan,
    'status' : status,
  };

  static Sewa fromJson(Map<String, dynamic>json) => Sewa(
    cdate: json['tanggal'],
    kembali: json['tanggal kembali'],
    mobil: json['mobil'],
    nopol: json['nopol'],
    atasnama: json['atasnama'],
    nomor: json['nomor'],
    durasi: json['durasi'], 
    tujuan: json['tujuan'], 
    status: json['status'], 
    );

  static map(Widget Function(Sewa sewa) buildSewa) {}
}
_showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Mobil berhasil ditambahkan"),
            actions: <Widget>[
              new ElevatedButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                                          return ProfileadminPage();
                                        }));
                },
              ),
            ],
          );
        });
  }