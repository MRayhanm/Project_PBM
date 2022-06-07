import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TambahPage extends StatefulWidget {
  const TambahPage({ Key? key }) : super(key: key);
  
  @override
  State<TambahPage> createState() => _TambahPageState();
}

class _TambahPageState extends State<TambahPage> {
  File? image;
  final controller = TextEditingController();
  final controllerMerk = TextEditingController();
  final controllerTarif = TextEditingController();
  final controllerTahun = TextEditingController();
  final controllerTransmisi = TextEditingController();
  final controllerKapasitasmaks = TextEditingController();
  final controllerTorsimaks = TextEditingController();
  final controllerAlamatsewa = TextEditingController();
  final controllerSilinder = TextEditingController();


Future openCamera() async {
  final pickedImage =
      await ImagePicker().pickImage(source: ImageSource.camera);
  image = File(pickedImage!.path);
}

Future openGallery() async {
  final imageGallery =
      await ImagePicker().pickImage(source: ImageSource.gallery);
  image = File(imageGallery!.path);
}
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
                      image != null
                          ? ClipOval(
                              child: Image.file(
                              image!,
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ))
                          : SizedBox(
                              width: 150,
                              height: 100,
                              child: IconButton(onPressed: (){
                                showModalBottomSheet(
                                    context: context,
                                    builder: ((builder) => Container(
                                        height: 100,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Choose Profile Photo',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                            IconButton(
                                              icon: Icon(Icons.camera),
                                              onPressed: () {
                                                openCamera();
                                                Navigator.pop(context);
                                              },
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.image),
                                              onPressed: () {
                                                openGallery();
                                                Navigator.pop(context);
                                              },
                                              )
                                            ],
                                          )
                                          ],
                                        ))));
                              }, icon: Icon(Icons.add))
                              
                            ),
                            
                        Container(
                        padding: EdgeInsets.only(left: 13.0, right:9.0),
                        alignment: Alignment.topLeft,
                        child:Text('Merk',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerMerk,
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
                        child:Text('Tarif',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerTarif,
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
                        child:Text('Tahun',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerTahun,
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
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerKapasitasmaks,
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
                        child:Text('Alamat penyewaan',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerAlamatsewa,
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
                        child:Text('Silinder',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerSilinder,
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
                        child:Text('Transmisi',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerTransmisi,
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
                        child:Text('Torsi Maksimal',style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: controllerTorsimaks,
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
                          final cars = Cars(
                            merk: controllerMerk.text, 
                            tarif: int.parse(controllerTarif.text), 
                            tahun: int.parse(controllerTahun.text),
                            transmisi: controllerTransmisi.text,
                            kapasitasmaks: controllerKapasitasmaks.text,
                            torsimaks: int.parse(controllerTorsimaks.text),
                            alamatsewa: controllerAlamatsewa.text,
                            silinder: controllerSilinder.text,
                            );
                          // final merk = controller.text;

                          createCars(cars);
                          Navigator.pop(context);
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
  Future createCars(Cars cars) async{
    final docUser = FirebaseFirestore.instance.collection('cars').doc();
    cars.id = docUser.id;
    final json = cars.toJson();
    await docUser.set(json);
  }
}
class Cars{
  String id;
  final String merk;
  final int tarif;
  final int tahun;
  final String transmisi;
  final String kapasitasmaks;
  final int torsimaks;
  final String alamatsewa;
  final String silinder;

  Cars({
    this.id = '',
    required this.merk,
    required this.tarif,
    required this.tahun,
    required this.transmisi,
    required this.kapasitasmaks,
    required this.torsimaks,
    required this.alamatsewa,
    required this.silinder,
  });

  Map<String, dynamic> toJson() => {
    'id' : id,
    'merk' : merk,
    'tarif' : tarif,
    'tahun' : tahun,
    'transmisi' : transmisi,
    'kapasitasmaks' : kapasitasmaks,
    'torsimaks' : torsimaks,
    'alamatsewa' : alamatsewa,
    'silinder' : silinder
    ,
  };

  static Cars fromJson(Map<String, dynamic>json) => Cars(
    merk: json['merk'], 
    tarif: json['tarif'], 
    tahun: json['tahun'],
    transmisi: json['transmisi'],
    kapasitasmaks: json['kapasitasmaks'],
    torsimaks: json['torsimaks'],
    alamatsewa: json['alamatsewa'],
    silinder: json['silinder'],
    );
}