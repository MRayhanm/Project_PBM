import 'dart:io';
import 'package:awal/bottomadmin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TambahMobil2 extends StatefulWidget {
  const TambahMobil2({Key? key}) : super(key: key);

  @override
  State<TambahMobil2> createState() => _TambahMobil2State();
}

class _TambahMobil2State extends State<TambahMobil2> {
  File? image;
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
  final status = 'Tersedia';

  CollectionReference ref = FirebaseFirestore.instance.collection('cars2');

  Future openCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    image = File(pickedImage!.path);
    final file = File(pickedImage.path);
    final imageName = '${DateTime.now().millisecondsSinceEpoch}.png';
    final firebaseStorageRef =
        FirebaseStorage.instance.ref().child('images/$imageName');
    final uploadTask = firebaseStorageRef.putFile(file);
    final taskSnapshot = await uploadTask;
    final _fileURL = await taskSnapshot.ref.getDownloadURL();
    await FirebaseFirestore.instance.collection('cars2').add({
      'Image': _fileURL,
      'status': status,
      'merk': merk.text,
      'tarif': tarif.text,
      'tahun': tahun.text,
      'transmisi': transmisi.text,
      'kapasitasmaks': kapasitasmaks.text,
      'torsimaks': torsimaks.text,
      'bahan': bensin.text,
      'silinder': silinder.text,
      'nopol': nopol.text,
      'kontak': kontak.text
    });
  }

  Future openGallery() async {
    final imageGallery =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    image = File(imageGallery!.path);
    final file = File(imageGallery.path);
    final imageName = '${DateTime.now().millisecondsSinceEpoch}.png';
    final firebaseStorageRef =
        FirebaseStorage.instance.ref().child('images/$imageName');
    final uploadTask = firebaseStorageRef.putFile(file);
    final taskSnapshot = await uploadTask;
    final _fileURL = await taskSnapshot.ref.getDownloadURL();
    await FirebaseFirestore.instance.collection('cars2').add({
      'Image': _fileURL,
      'status': status,
      'merk': merk.text,
      'tarif': tarif.text,
      'tahun': tahun.text,
      'transmisi': transmisi.text,
      'kapasitasmaks': kapasitasmaks.text,
      'torsimaks': torsimaks.text,
      'bahan': bensin.text,
      'silinder': silinder.text,
      'nopol': nopol.text,
      'kontak': kontak.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text(
          'Mobil Baru',
          style: TextStyle(color: Colors.black),
        ),
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
                              child: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: ((builder) => Container(
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 20),
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Pilih gambar dari',
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
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
                                  },
                                  icon: Icon(Icons.add))),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Merk',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: merk,
                          // controller: _alamat,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Tarif',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: tarif,
                          // controller: _durasi,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Tahun',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: tahun,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Nomor',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: nopol,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Kapasitas Maksimal',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: kapasitasmaks,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Bahan Bakar',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: bensin,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Silinder',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: silinder,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Transmisi',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: transmisi,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Torsi Maksimal',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: torsimaks,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 13.0, right: 9.0),
                        alignment: Alignment.topLeft,
                        child: Text('Contact Person',
                            style: TextStyle(fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        height: 30,
                        width: 380,
                        child: TextField(
                          controller: kontak,
                          decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 175, 175, 175),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => BottomAdminPage()));
                          }
                          ;
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      )
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
}
